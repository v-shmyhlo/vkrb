require 'vkrb/api/users/get'

module VKRB
  module Api
    class Users
      include VKRB::Api::Base
      include VKRB::Api::Users::Get
    end
  end
end
