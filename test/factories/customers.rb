# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    first_name "MyString"
    last_name "MyString"
    email "abc@xyz.com"
    age 1
    date_of_birth "2012-08-19"
  end
end
