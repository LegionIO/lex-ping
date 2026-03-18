# frozen_string_literal: true

require 'spec_helper'

unless defined?(Legion::Extensions::Helpers::Lex)
  module Legion
    module Extensions
      module Helpers
        module Lex; end
      end
    end
  end
end

unless defined?(Net::Ping::HTTP)
  module Net
    module Ping
      class HTTP
        def initialize(_url); end
        def ping?; end
      end
    end
  end
end

require 'legion/extensions/ping/runners/http'

RSpec.describe Legion::Extensions::Ping::Runners::Http do
  let(:runner) { Object.new.extend(described_class) }
  let(:ping_result) { instance_double(Net::Ping::HTTP) }

  before do
    allow(Net::Ping::HTTP).to receive(:new).and_return(ping_result)
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

      it 'prepends http:// when no scheme given' do
        runner.ping(host: 'example.com')
        expect(Net::Ping::HTTP).to have_received(:new).with('http://example.com')
      end
    end

    context 'when host already has a scheme' do
      before { allow(ping_result).to receive(:ping?).and_return(true) }

      it 'does not double-prepend http://' do
        runner.ping(host: 'http://example.com')
        expect(Net::Ping::HTTP).to have_received(:new).with('http://example.com')
      end

      it 'preserves https://' do
        runner.ping(host: 'https://example.com')
        expect(Net::Ping::HTTP).to have_received(:new).with('https://example.com')
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
