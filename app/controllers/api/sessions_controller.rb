require 'token_authenticate_me/controllers/sessionable'

module Api
  class SessionsController < BaseApiController
    include TokenAuthenticateMe::Controllers::Sessionable
  end
end
