class Api::V1::BoxerDogsController < ApplicationController

  def index
    @dogs = Dog.all
    render :json => { :dogs => @dogs.map{|d| Boxer.ship(:dog, d)} }
  end

end