module VKRB
  module Configurable
    class Config
      attr_accessor :base_uri, :access_token, :user_id, :api_version

      def configure(access_token:,
                    user_id:,
                    api_version: '5.37',
                    base_uri:    'https://api.vk.com')
        self.access_token = access_token
        self.user_id      = user_id
        self.api_version  = api_version
        self.base_uri     = base_uri
      end
    end
  end
end
