require 'token_authenticate_me/controllers/token_authenticateable'

module Api
  class BaseApiController < ApplicationController
    include ApiMe
    include TokenAuthenticateMe::Controllers::TokenAuthenticateable

    skip_before_action :verify_authenticity_token
  end
end
