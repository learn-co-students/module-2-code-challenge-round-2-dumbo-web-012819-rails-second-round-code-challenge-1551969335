class AddRatingToGuestEpisode < ActiveRecord::Migration[5.1]
    def change
        add_column :guest_episodes, :rating, :integer
    end
end

class AddEmailToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email, :string
  end
end
