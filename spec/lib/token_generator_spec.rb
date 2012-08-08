require 'spec_helper'

describe "TokenGenerator" do
  describe "generate" do  
    it "should generate a token" do
      token = TokenGenerator.generate
      p token
      token.should_not be_nil
    end
  end
end