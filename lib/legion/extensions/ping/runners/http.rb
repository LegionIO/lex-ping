module Legion
  module Extensions
    module Ping
      module Runners
        module Http
          def ping(host:, **)
            result = Net::Ping::UDP.new(host, 'http')
            { host: host, result: result, success: result.ping? }
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
