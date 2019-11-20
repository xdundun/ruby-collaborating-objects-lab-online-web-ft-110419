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
    if
      Artist.all.select {|artist| artist.name == name
        return artist}

    else
      self.new(name)
       return artist
    end
  end

  def self.all
    @@all
  end
end #end of class
