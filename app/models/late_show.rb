class LateShow < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  # validates :rating, #: {maximum: 5}
end
