# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :workorder do
    name "Rendal Maile"
    email "rmaile@gmail.com"
    address "123 Abc st"
    city "New York"
    state "NY"
    zip "92504"
    country "USA"
    phone "333-333-4444"
    description "this is a description"
    jobtype "Wedding"
    comments "this is a comment this is a comment"
    eventdate "01/23/2014"
    quotedprice "33.33"
    orderstatus "client intake"

    factory :invalid_workorder1 do
        name ""
    end
  end
end
