FactoryGirl.define do
  factory :dog do
    sequence(:name) { |n| "Dog #{n}"}    
  end
  
end