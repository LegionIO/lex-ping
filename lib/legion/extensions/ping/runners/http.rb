# frozen_string_literal: true

module Legion
  module Extensions
    module Ping
      module Runners
        module Http
          def ping(host:, **)
            url = host.start_with?('http://', 'https://') ? host : "http://#{host}"
            result = Net::Ping::HTTP.new(url)
            { host: host, result: result, success: result.ping? }
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
