# frozen_string_literal: true

require 'spec_helper'

unless defined?(Net::Ping::TCP)
  module Net
    module Ping
      class TCP
        def initialize(_host); end
        def ping?; end
      end
    end
  end
end

require 'legion/extensions/ping/runners/tcp'

RSpec.describe Legion::Extensions::Ping::Runners::Tcp do
  let(:runner) { Object.new.extend(described_class) }
  let(:ping_result) { instance_double(Net::Ping::TCP) }

  before do
    allow(Net::Ping::TCP).to receive(:new).and_return(ping_result)
  end

  describe '#ping' do
    context 'when host is reachable' do
      before { allow(ping_result).to receive(:ping?).and_return(true) }

      it 'returns success true' do
        result = runner.ping(host: 'example.com')
        expect(result[:success]).to be true
      end

      it 'includes the host' do
        result = runner.ping(host: 'example.com')
        expect(result[:host]).to eq('example.com')
      end
    end

    context 'when host is unreachable' do
      before { allow(ping_result).to receive(:ping?).and_return(false) }

      it 'returns success false' do
        result = runner.ping(host: 'down.example.com')
        expect(result[:success]).to be false
      end
    end
  end
end
