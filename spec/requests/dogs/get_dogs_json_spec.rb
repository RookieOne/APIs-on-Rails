require 'spec_helper'

describe "get dogs" do
  describe "as json" do
    before(:each) do
      3.times { FactoryGirl.create(:dog) }
      get dogs_path(:format => :json)
      @dogs = JSON.parse(response.body)
    end
    it "should return json" do
      @dogs.count.should == 3
    end
  end
end