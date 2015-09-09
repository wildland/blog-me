require 'token_authenticate_me/controllers/password_resetable'

module Api
  class PasswordResetsController < BaseApiController
    include TokenAuthenticateMe::Controllers::PasswordResetable
  end
end
