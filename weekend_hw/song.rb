class Song
  attr_reader(:song_name, :song_artist, :song_genre)

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end

  def get_song_name
    @name
  end

  def get_song_artist
    @artist
  end

  def get_song_genre
    @genre
  end

end

# def

#   def playlist_by_genre(array, target_genre)
#     array.find_all {|song| song.get_song_genre == target_genre}
#   end

# end