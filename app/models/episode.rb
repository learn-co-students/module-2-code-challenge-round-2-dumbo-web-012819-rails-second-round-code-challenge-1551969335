class Episode < ApplicationRecord
    has_many :guest_episodes
    has_many :guests, through: :guest_episodes
end

# create_table "episodes", force: :cascade do |t|
#   t.date "date"
#   t.integer "number"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
