require 'spec_helper'

describe "API" do
  describe "v1" do
    describe "rabl get dogs" do
      before(:each) do
        3.times { FactoryGirl.create(:dog) }
        get api_v1_rabl_dogs_path
        @result = JSON.parse(response.body)
      end
      it "should return dogs" do
        @result["dogs"].count.should == 3
      end
    end
  end
end