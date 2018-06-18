class MoveRatingFromAlbumsToTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :rating, :integer
    add_column :tracks, :rating, :integer
  end
end
