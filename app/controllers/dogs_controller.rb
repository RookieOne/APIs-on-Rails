class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @dogs }
    end
  end

end