class Guest < ApplicationRecord
	has_many :late_shows
	has_many :episodes, through: :late_shows
end
