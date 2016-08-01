require ('minitest/autorun')
require ('minitest/rg')
require_relative('../room')

class TestSong < MiniTest::Test

  def setup
    test_guests = Guest.new(
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

    test_songs = Songs.new(
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

    @test_room = Room.new(test_guests, test_songs)
  end

# def test_remove_guest_by_index
#   assert_equal("test", @test_room.remove_guest_by_index(1))
# end

def test_add_guest
@test_room.add_guest()
  end

  def test_add_song
  @test_room.add_song()
    end

end