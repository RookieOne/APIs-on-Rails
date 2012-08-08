require 'spec_helper'

describe "Api" do
  describe "devise token" do
    context "without authentication" do
      before(:each) do
        get api_devise_token_dogs_path
      end
      it "should return 302 status code" do
        response.code.should == "302"
      end
    end
    context "with auth token" do
      before(:each) do
        @user = FactoryGirl.create(:user)        
        get api_devise_token_dogs_path(:auth_token => @user.authentication_token)
      end
      it "should return 200 status code" do
        response.code.should == "200"
      end
    end
    context "second request" do
      before(:each) do
        @user = FactoryGirl.create(:user)        
        get api_devise_token_dogs_path(:auth_token => @user.authentication_token)
        get api_devise_token_dogs_path
      end
      it "should return 200 status code" do
        response.code.should == "200"
      end
    end    
  end
end