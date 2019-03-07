class CreateLateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :late_shows do |t|
      t.belongs_to :episodes, foreign_key: true
      t.belongs_to :guests, foreign_key: true

      t.timestamps
    end
  end
end
