require ('minitest/autorun')
require ('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup 
    @john = Guest.new("John", "Never Gonna Give You Up")
  end

  def test_get_name
    assert_equal("John", @john.get_name)
  end

  def test_get_fav_song
    assert_equal("Never Gonna Give You Up", @john.get_fav_song)
  end

  def test_cheer
    assert_equal("John cheers loudly and sings along to Never Gonna Give You Up.", @john.cheer)
  end

end