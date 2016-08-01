require ('minitest/autorun')
require ('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @never_gonna = Song.new("Never Gonna Give You Up", "Rick Astley", "pop")
    @witch_doctor = Song.new("Witch Doctor", "The Cartoons", "pop")
    @battle_metal = Song.new("Battle Metal", "Turisas", "metal")
  end

  def test_get_song_name
    assert_equal("Never Gonna Give You Up", @never_gonna.get_song_name)
  end

  def test_get_song_artist
    assert_equal("The Cartoons", @witch_doctor.get_song_artist)
  end

  def test_get_song_genre
    assert_equal("metal", @battle_metal.get_song_genre)
  end

  # def test_playlist
  #   assert_equal(["Never Gonna Give You Up", "Witch Doctor"], playlist_by_genre(@all_songs, "pop"))
  # end

end