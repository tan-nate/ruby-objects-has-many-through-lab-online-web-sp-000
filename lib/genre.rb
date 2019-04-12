class Genre
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def songs
<<<<<<< HEAD
    Song.all.select do |song|
=======
    Song.all select do |song|
>>>>>>> b0f152069784f07644c50ca5d1d8d974a997ff95
      song.genre == self
    end
  end
  
  def artists
    songs.collect do |song|
      song.artist
    end
  end
end