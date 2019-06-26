class Artist < ApplicationRecord
  validates_presence_of :name

   has_many :songs


  def average_song_length
    self.songs.average(:length)
  end

end

# Use TDD to create an instance method on our Artist model that returns the average of a single artist’s songs. As you build out this method, remember to use pry and self to help debug and guide your implementations!
