class Workorder < ActiveRecord::Base
  attr_accessible :name, :email, :address, :city, :state, :zip, :country, :phone, :description, :jobtype, :comments, :eventdate, :quotedprice, :orderstatus


end
