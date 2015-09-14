module VKRB
  class Client
    include VKRB::Configurable

    def initialize(opts)
      config.configure(opts)
    end

    def messages
      @messages ||= VKRB::Api::Messages.new(config)
    end

    def users
      @users ||= VKRB::Api::Users.new(config)
    end
  end
end
