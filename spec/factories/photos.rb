# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    imagename "MyString"
    dateshot "2014-02-28"
    size "MyString"
    resolution "MyString"
    imageurl "MyString"
    clientname "MyString"
    published ""
  end
end
