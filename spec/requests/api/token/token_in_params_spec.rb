require 'spec_helper'

describe "Api" do
  describe "token in params" do
    context "without authentication" do
      before(:each) do        
        get api_token_in_params_dogs_path
      end
      it "should return 401 status code" do
        response.code.should == "401"
      end
    end
    context "with bad token" do
      before(:each) do
        @api_key = ApiKey.create
        
        get api_token_in_params_dogs_path(:api_token => "badtoken")
      end
      it "should return 401 status code" do
        response.code.should == "401"
      end
    end    
    context "with good token" do
      before(:each) do
        @api_key = ApiKey.create
        
        get api_token_in_params_dogs_path(:api_token => @api_key.api_token)
      end
      it "should return 200 status code" do
        response.code.should == "200"
      end
    end
  end
end