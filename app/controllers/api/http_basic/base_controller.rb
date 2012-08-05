class Api::HttpBasic::BaseController < ApplicationController
  before_filter :authenticate

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "api_user" && password == "super_easy"
    end
  end
end