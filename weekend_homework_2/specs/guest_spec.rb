require ('minitest/autorun')
require ('minitest/rg')
require_relative('../guest')

class TestSong < MiniTest::Test

  def setup
    @test_guests = Guest.new(
      [
        {
          name: "Zsolt",
          fav_song: "Twilight of the Thunder Gods",
          funds: 200
        },
        {
          name: "Tony", 
          fav_song: "Never Gonna Give You Up",
          funds: 150
        }
      ]  
    )
  end

  def test_get_name
    assert_equal("Zsolt", @test_guests.get_name())
  end

  def test_get_fav_song
    assert_equal("Never Gonna Give You Up", @test_guests.get_fav_song(1))
  end

  def test_get_funds
    assert_equal(200, @test_guests.get_funds())
  end

  def test_remove_funds
    assert_equal(100, @test_guests.remove_funds(50, 1))
  end

  def test_cheer
    assert_equal("Zsolt cheers loudly and sings along to Twilight of the Thunder Gods.", @test_guests.cheer())
  end

  def test_get_fav_song_by_name
    assert_equal("Twilight of the Thunder Gods", @test_guests.get_fav_song_by_name("Zsolt"))
  end

  def test_get_funds_by_name
    assert_equal(150, @test_guests.get_funds_by_name("Tony"))
  end

  def test_get_guest_list
    assert_equal(["Zsolt", "Tony"], @test_guests.get_guest_list())
  end

  # def test_get_guest_index
  #   assert_equal(1, @test_guests.get_guest_index("Tony"))
  # end

end