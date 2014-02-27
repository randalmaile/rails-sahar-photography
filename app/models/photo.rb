class Photo < ActiveRecord::Base
  attr_accessible :clientname, :dateshot, :photourl, :resolution, :size, :title
end
