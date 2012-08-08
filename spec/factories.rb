FactoryGirl.define do

  factory :user do
    sequence(:email) {|n| "email_#{n}@example.com"}
    password "password"
    password_confirmation "password"
  end
  
  factory :dog do
    sequence(:name) { |n| "Dog #{n}"}    
    age 3
  end
  
end