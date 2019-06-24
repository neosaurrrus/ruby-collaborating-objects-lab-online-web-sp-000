class Song
attr_accessor :name, :new_by_filename, :artist


  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_name = filename.split("-")
    song_name = split_name[1].strip
    artist_name = split_name[0].strip
    new_Song = Song.new(song_name)
    new_Song.artist = Artist.find_or_create_by_name(artist_name)
    puts Artist.all.length
    
    # new_Song.name = sog
    # puts new_Song.name
    new_Song
  end


end # of class
