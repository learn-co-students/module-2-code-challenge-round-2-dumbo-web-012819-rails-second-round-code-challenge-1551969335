class Episode < ApplicationRecord
	has_many :late_shows
	has_many :guests, through: :late_shows
end
