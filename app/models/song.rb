class Song < ApplicationRecord
  belongs_to :artist

  def self.songcount
    Song.count
  end

end
