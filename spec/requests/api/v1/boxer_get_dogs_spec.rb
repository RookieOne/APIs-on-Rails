require 'spec_helper'

describe "API" do
  describe "v1" do
    describe "boxer get dogs" do
      before(:each) do
        3.times { FactoryGirl.create(:dog) }
        get api_v1_boxer_dogs_path
        @dogs = JSON.parse(response.body)["dogs"]
      end
      it "should return dogs" do
        @dogs.count.should == 3
      end
    end
  end
end