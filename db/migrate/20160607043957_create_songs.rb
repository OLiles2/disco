class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_url
      t.string :artist_img
      t.string :title
      t.string :artist

      t.timestamps

    end
  end
end
