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

  def self.find_or_create_by_name(name)
    Artist.all.select {|artist|
      if artist.name == self
        puts artist.name
    end}

  end

  def self.all
    @@all
  end
end #end of class
