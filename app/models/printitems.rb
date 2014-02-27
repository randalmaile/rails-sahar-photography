class Printitems < ActiveRecord::Base
  attr_accessible :dimensions, :finish, :papertype, :quantity, :unitprice
end
