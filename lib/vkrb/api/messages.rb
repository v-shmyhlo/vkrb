require 'vkrb/api/messages/get_history'
require 'vkrb/api/messages/get'
require 'vkrb/api/messages/send'

module VKRB
  module Api
    class Messages
      include VKRB::Api::Base
      include VKRB::Api::Messages::GetHistory
      include VKRB::Api::Messages::Get
      include VKRB::Api::Messages::Send
    end
  end
end
