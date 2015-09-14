module VKRB
  module Api
    module Base
      include VKRB::Configurable
      include VKRB::Api::Requestable

      def initialize(config)
        self.config = config
      end

      private

      def format_as_array(params, *fields)
        fields.each do |field|
          params[field] = params[field] && params[field].join(',')
        end
      end
    end
  end
end
