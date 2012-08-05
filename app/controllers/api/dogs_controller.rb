class Api::DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render :json => @dogs
  end

end