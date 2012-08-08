FactoryGirl.define do
  factory :dog do
    sequence(:name) { |n| "Dog #{n}"}    
    age 3
  end
  
end