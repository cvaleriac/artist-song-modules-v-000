require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable
  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
end
