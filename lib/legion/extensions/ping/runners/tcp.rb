module Legion
  module Extensions
    module Ping
      module Runners
        module Tcp
          def ping(host:, **)
            result = Net::Ping::TCP.new(host)
            { host: host, result: result, success: result.ping? }
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
