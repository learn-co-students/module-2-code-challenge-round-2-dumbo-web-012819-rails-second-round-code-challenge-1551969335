class GuestsController < ApplicationController

    def index
        @guests = Guest.all
    end

    def show
        @guest = Guest.find(params[:id])
    end


end

# create_table "guests", force: :cascade do |t|
#   t.string "name"
#   t.string "occupation"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
