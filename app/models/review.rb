class Review < ActiveRecord::Base
  belongs_to :ad
  belongs_to :user

  ratyrate_rateable 'Nice'
end
