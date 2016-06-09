class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.boolean :favorite_tag
      t.integer :song_id
      t.integer :user_id

      t.timestamps

    end
  end
end
