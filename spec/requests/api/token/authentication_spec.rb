require 'spec_helper'

describe "Api" do
  describe "http_basic" do
    context "without authentication" do
      before(:each) do
        get api_token_dogs_path
      end
      it "should return 401 status code" do
        response.code.should == "401"
      end
    end
    context "with authentication" do
      before(:each) do
        auth = ActionController::HttpAuthentication::Basic.encode_credentials "api_user", "super_easy"        
        get api_http_basic_dogs_path, {}, 'HTTP_AUTHORIZATION' => auth
      end
      it "should return 200 status code" do
        response.code.should == "200"
      end
    end
  end
end