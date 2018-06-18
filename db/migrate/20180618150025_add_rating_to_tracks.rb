class AddRatingToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :rating, :integer
  end
end
