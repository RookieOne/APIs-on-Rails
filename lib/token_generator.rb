require 'uuidtools'
require 'base64'

class TokenGenerator

  def self.generate
    Base64.encode64(UUIDTools::UUID.random_create)[0..15].downcase
  end

end