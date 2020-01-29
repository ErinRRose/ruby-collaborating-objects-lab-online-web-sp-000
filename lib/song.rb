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

  def new_by_filename(filename)
    #artist - song_name - genre.mp3
    #artist
    #song_name
    artist = filename.split(' - ')[0]
    song_name = filename.split(' - ')[1]
    new_song = Song.new(song_name)
    new_song.artist = artist
    
  end

end
