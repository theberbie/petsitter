class Ad < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  geocoded_by :address_line
  after_validation :geocode
end
