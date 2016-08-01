require ('minitest/autorun')
require ('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
never_gonna = Song.new("Never Gonna Give You Up", "Rick Astley", "Pop")
american_idiot = Song.new("American Idiot", "Green Day", "Punk")
all_songs = [never_gonna, american_idiot]

john = Guest.new("John", "Never Gonna Give You Up")
james = Guest.new("James", "American Idiot")
all_guests = [john, james]

@test_room = Room.new(all_guests, all_songs)

  end

def test_get_artist_from_name
  assert_equal("Rick Astley", @test_room.get_artist_from_name("Never Gonna Give You Up"))
end

def test_get_current_song_name
  assert_equal("Never Gonna Give You Up", @test_room.get_current_song_name())
end

def test_add_guest()
@test_room.add_guest()
  end

end