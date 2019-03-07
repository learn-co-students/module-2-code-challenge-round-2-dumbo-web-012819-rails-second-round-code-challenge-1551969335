class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  #Checks to see if the user has put in a rating between 1 and 5
  validates :rating, inclusion: 1 .. 5
end
