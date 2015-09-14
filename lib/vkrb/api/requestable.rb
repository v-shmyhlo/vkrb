module VKRB
  module Api
    module Requestable
      def request_for(method, params:)
        request = Typhoeus::Request.new(config.base_uri + "/method/#{method}",
                                        params: params.merge(default_params))
        request.tap do |req|
          req.on_complete do |response|
            begin
              data = Yajl.load(response.body)
            rescue Yajl::ParseError
              raise VKRB::Errors::BadJsonError
            end

            handle_error(data)
            yield(data['response']) if block_given?
          end
        end
      end

      private

      def handle_error(data)
        return unless data['error']
        code = data['error']['error_code']
        err = case code
              when 10
                VKRB::Errors::ServerError
              when 9
                VKRB::Errors::SameMessageError
              when 5
                VKRB::Errors::UnauthorizedError
              else
                VKRB::Errors::RequestError
              end

        fail(err, data['error']['error_msg'] + " (code: #{code})")
      end

      def default_params
        {
          access_token: config.access_token,
          v: config.api_version
        }
      end
    end
  end
end
