require 'spec_helper'

describe "Api" do
  describe "token in header" do
    context "without authentication" do
      before(:each) do        
        get api_token_in_header_dogs_path
      end
      it "should return 401 status code" do
        response.code.should == "401"
      end
    end
    context "with bad token" do
      before(:each) do
        @api_key = ApiKey.create
        
        token =  ActionController::HttpAuthentication::Token.encode_credentials("badtoken")
        get api_token_in_header_dogs_path, {}, "HTTP_AUTHORIZATION" => token
      end
      it "should return 401 status code" do
        response.code.should == "401"
      end
    end    
    context "with good token" do
      before(:each) do
        @api_key = ApiKey.create
        
        token =  ActionController::HttpAuthentication::Token.encode_credentials(@api_key.api_token)
        get api_token_in_header_dogs_path, {}, "HTTP_AUTHORIZATION" => token
      end
      it "should return 200 status code" do
        response.code.should == "200"
      end
    end
  end
end