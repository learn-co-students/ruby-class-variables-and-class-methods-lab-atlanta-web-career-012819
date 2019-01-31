class Song
  @@all = []
  @@artists = []
  @@genres = []
  @@count = 0
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
  genre_counts = {}
    @@genres.each do |genre|
      if genre_counts[genre]
        genre_counts[genre] += 1
      else
        genre_counts[genre] = 1
      end
    end
  genre_counts
  end
  def self.artist_count
    artist_counts = {}
      @@artists.each do |genre|
        if artist_counts[genre]
          artist_counts[genre] += 1
        else
          artist_counts[genre] = 1
        end
      end
    artist_counts
  end

end
