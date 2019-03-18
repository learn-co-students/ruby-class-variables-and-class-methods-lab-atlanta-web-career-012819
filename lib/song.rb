require 'pry'

class Song
@@all = []
@@count = 0
@@artists = []
@@genres = []

attr_accessor :name, :artist, :genre, :count

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@artists.count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    rap_count = @@genres.select {|c| c == "rap"}.count
    pop_count = @@genres.select {|c| c == "pop"}.count
    h = {"rap" => rap_count, "pop" => pop_count}
  end

  def self.artist_count
    jay_count = @@artists.select {|c| c == "Jay-Z"}.count
    brit_count = @@artists.select {|c| c == "Brittany Spears"}.count
    h = {"Jay-Z" => jay_count, "Brittany Spears" => brit_count}
  end

end
