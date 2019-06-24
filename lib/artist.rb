class Artist
attr_accessor :name, :all, :find_or_create_by_name
@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end # of save

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    puts @@all
    if @@all.find{ |artist| artist.name == name}
      puts "Artist found"
    else
      new_artist = self.new(name)
      @@all << new_artist
      new_artist
    end # conditional
  end # find or create.

  def print_songs
    @songs.each { |song| puts song.name}
  end

end # of class
