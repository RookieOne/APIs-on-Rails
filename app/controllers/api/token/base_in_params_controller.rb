class Api::Token::BaseInParamsController < ApplicationController
  before_filter :check_token

  protected

  def check_token
    api_token = ApiKey.find_by_api_token(params[:api_token])
    head :unauthorized unless api_token    
  end
end