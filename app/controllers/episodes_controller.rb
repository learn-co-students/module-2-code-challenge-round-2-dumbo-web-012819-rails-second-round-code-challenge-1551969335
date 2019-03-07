class EpisodesController < ApplicationController

    def index
        @episodes = Episode.all
    end

    def show
        @episode = Episode.find(params[:id])
    end

end

# create_table "episodes", force: :cascade do |t|
#   t.date "date"
#   t.integer "number"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
