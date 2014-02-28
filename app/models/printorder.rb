class Printorder < ActiveRecord::Base
  attr_accessible :clientname, :comments, :description, :email, :phone, :status, :title
  has_many :printitems, dependent: :destroy
end
