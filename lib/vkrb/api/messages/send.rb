module VKRB
  module Api
    class Messages
      module Send
        def send(message, **params)
          params.symbolize_keys!
          params[:message] = message
          params.assert_valid_keys(:user_id, :message)

          request_for('messages.send', params: params) do |res|
            yield VKRB::Models::Message.new(id: res) if block_given?
          end
        end
      end
    end
  end
end
