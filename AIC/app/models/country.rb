class Country < ActiveRecord::Base
  attr_accessible :flag
  has_many :images, as: :imageable

end
