module VKRB
  module Api
    class Messages
      module Get
        def get(**params)
          params.symbolize_keys!
          params.assert_valid_keys(:count)

          request_for('messages.get', params: params) do |res|
            yield VKRB::Models::Message.new(res['items'])
          end
        end
      end
    end
  end
end
