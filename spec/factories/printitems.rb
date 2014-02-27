# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :printitem, :class => 'Printitems' do
    quantity 1
    finish "MyString"
    dimensions "MyString"
    papertype "MyString"
    unitprice "9.99"
  end
end
