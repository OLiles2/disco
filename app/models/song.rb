class Song < ActiveRecord::Base
  has_many :favorites , :class_name => "Favorite", :foreign_key => "song_id"
end
