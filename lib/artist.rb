class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}

  end

  def self.all
    @@all
  end
end #end of class
