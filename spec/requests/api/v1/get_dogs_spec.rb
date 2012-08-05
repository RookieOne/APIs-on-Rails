require 'spec_helper'

describe "API" do
  describe "v1" do
    describe "get dogs" do
      before(:each) do
        3.times { FactoryGirl.create(:dog) }
        get api_v1_dogs_path
        @dogs = JSON.parse(response.body)
      end
      it "should return dogs" do
        @dogs.count.should == 3
      end
    end
  end
end