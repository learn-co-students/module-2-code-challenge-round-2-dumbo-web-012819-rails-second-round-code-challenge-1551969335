class AddRatingToLateShows < ActiveRecord::Migration[5.1]
  def change
    add_column :late_shows, :rating, :integer
  end
end
