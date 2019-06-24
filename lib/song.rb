class Song
attr_accessor :name, :new_by_filename, :artist

  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_name = filename.split("-")
    song_name = split_name[1].strip
    artist_name = split_name[0].strip

    if !@@all.find{ |song| song.name == name}
      new_song = Song.new(song_name)
      @@all << new_song
      new_song.artist = Artist.find_or_create_by_name(artist_name)
    else
    end



    # new_Song.name = sog
    # puts new_Song.name
    new_Song
  end


end # of class
