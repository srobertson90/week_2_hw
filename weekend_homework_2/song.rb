class Songs
  attr_reader :songs

  def initialize (songs)
    @songs = songs
  end

  def get_title(index = 0)
    @songs[index][:title]
  end

  def get_artist(index = 0)
    @songs[index][:artist]
  end

  def get_genre(index = 0)
    (@songs[index][:genre]).to_s
  end

  def get_songs_by_genre(genre)
   (@songs.find_all {|song| song[:genre] == (genre.to_sym)}).map {|song| song[:title]}
  end

end