require 'spec_helper'

describe "API" do
  describe "v1" do
    describe "rabl get dog" do
      before(:each) do
        @dog = FactoryGirl.create(:dog)
        get api_v1_rabl_dog_path(@dog)
        @result = JSON.parse(response.body)
        p @result
      end
      it "should return dogs" do
        @result["dog"]["id"].should == @dog.id
      end
    end
  end
end