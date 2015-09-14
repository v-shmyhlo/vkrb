module VKRB
  module Models
    class Base
      class << self
        alias_method :__new__, :new

        def new(object)
          case object
          when Array
            object.map { |o| __new__(o) }
          else
            __new__(object)
          end
        end

        def from_array(objects)
          objects.map { |object| new(object) }
        end
      end

      def initialize(attrs)
        self.attributes = attrs.deep_symbolize_keys
      end

      def attributes=(attrs)
        attrs.each_pair do |k, v|
          send "#{k}=", v
        end
      end
    end
  end
end
