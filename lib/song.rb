class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
  end

  def self.new_by_filename(filename)
    song = Song.new(filename)
   song.name = filename.split(" - ")[1]
   puts song
  end

end #end of class
