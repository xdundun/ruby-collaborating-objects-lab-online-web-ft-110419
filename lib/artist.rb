class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def find_or_create_by_name(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist
  end

  def self.all
    @@all
  end
end #end of class
