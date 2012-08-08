class Api::Token::InHeaderDogsController < Api::Token::BaseInHeaderController

  def index
    render :text => "TEST"
  end

end