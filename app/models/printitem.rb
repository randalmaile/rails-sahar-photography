class Printitem < ActiveRecord::Base
  attr_accessible :dimensions, :finish, :papertype, :quantity, :unitprice, :printorder, :photo_id
  belongs_to :printorder
  has_and_belongs_to_many :photos
end