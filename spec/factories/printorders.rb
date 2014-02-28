# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :printorder do
    title "MyString"
    email "MyString"
    phone "MyString"
    description "MyText"
    comments "MyText"
    status "MyString"
    clientname "MyString"
  end
end
