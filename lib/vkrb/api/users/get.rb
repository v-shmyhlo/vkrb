module VKRB
  module Api
    class Users
      module Get
        def get(**params)
          params.symbolize_keys!
          params.assert_valid_keys(:user_ids, :fields, :name_case)
          format_as_array(params, :user_ids, :fields)

          request_for('users.get', params: params) do |res|
            yield VKRB::Models::User.new(res)
          end
        end
      end
    end
  end
end
