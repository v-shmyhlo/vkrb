require 'vkrb/configurable/config'

module VKRB
  module Configurable
    attr_writer :config

    def config
      @config ||= VKRB::Configurable::Config.new
    end
  end
end
