class ApiKey < ActiveRecord::Base
  before_create :generate_api_token
  
  private

  def generate_api_token
    self.api_token = SecureRandom.hex
  end
end