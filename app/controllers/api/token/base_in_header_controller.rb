class Api::Token::BaseInHeaderController < ApplicationController
  before_filter :check_token

  protected

  def check_token
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(:api_token => token)
    end
  end
end