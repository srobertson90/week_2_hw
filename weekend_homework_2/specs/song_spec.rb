require ('minitest/autorun')
require ('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @test_playlist = Songs.new(
      [
        {
          title: "Never Gonna Give You Up",
          artist: "The Cartoons",
          genre: :pop
        },
        {
          title: "Witch Doctor", 
          artist: "The Cartoons",
          genre: :pop
        },
        {
          title: "Twilight of the Thunder God",
          artist: "Amon Amarth",
          genre: :metal
        }
      ]  
    )
  end

  def test_get_title
    assert_equal("Never Gonna Give You Up", @test_playlist.get_title())
  end

  def test_get_song_artist
    assert_equal("The Cartoons", @test_playlist.get_artist(1))
  end

  def test_get_song_genre
    assert_equal("metal", @test_playlist.get_genre(2))
  end

  def test_songs_by_playlist
    assert_equal(["Never Gonna Give You Up", "Witch Doctor"], @test_playlist.get_songs_by_genre("pop"))
  end

end