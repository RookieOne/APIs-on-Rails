class Api::DeviseToken::DogsController < ApplicationController
  before_filter :authenticate_user!

  def index
    render :text => "TEST"
  end
  
end