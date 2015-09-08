class Api::CsrfController < ApplicationController
  skip_before_action :authenticate, only: [:index]

  def index
    render json: { request_forgery_protection_token => form_authenticity_token }.to_json
  end
end
