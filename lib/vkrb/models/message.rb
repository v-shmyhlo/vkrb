module VKRB
  module Models
    class Message < Base
      attr_accessor :id,
                    :date,
                    :out,
                    :user_id,
                    :read_state,
                    :title,
                    :body,
                    :attachments,
                    :chat_id,
                    :chat_active,
                    :push_settings,
                    :users_count,
                    :admin_id,
                    :photo_50,
                    :photo_100,
                    :photo_200,
                    :emoji
    end
  end
end
