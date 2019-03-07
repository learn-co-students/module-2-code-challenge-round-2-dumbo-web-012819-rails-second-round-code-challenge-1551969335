class Guest < ApplicationRecord
    has_many :guest_episodes
    has_many :episodes, through: :guest_episodes
end

# create_table "guests", force: :cascade do |t|
#   t.string "name"
#   t.string "occupation"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
