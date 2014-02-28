class Photo < ActiveRecord::Base
  attr_accessible :clientname, :dateshot, :imagename, :imageurl, :published, :resolution, :size
  has_and_belongs_to_many :printitems
end
