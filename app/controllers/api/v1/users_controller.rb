module Api
  module V1
    class UsersController < BaseApiController
      skip_before_action :authenticate, only: [:create]
    end
  end
end
