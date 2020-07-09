class Artist 
  attr_accessor :name 
  @@song_count = 0
  def initialize(name)
    @name =name
  end
  
  def add_song(song)
    song.artist =self
    @@song_count +=1
  end
  
  def songs 
    a =Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(name)
    song =Song.new(name)
    add_song(song)
    @@song_count +=1
  end
  
  def self.song_count 
    @@song_count
  end
end


class Song 
  attr_accessor :name ,:artist
  @@all =[]
  
  def initialize(name,artist=nil)
    @name =name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end

adele=Artist.new("Adele")
rolling_in_the_deep =Song.new("Rolling in the deep")
# adele.add_song(rolling_in_the_deep)
adele.add_song_by_name("Someone like you")
Artist.song_count