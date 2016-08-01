require_relative('song')
require_relative('guest')

class Room

  def initialize(guests_array, song_array)
    @guests = guests_array
    @songs = song_array
  end

  def get_artist_from_name(name)
    (@songs.find {|song| song.get_song_name == name}).get_song_artist
  end

  def get_current_song_name()
    @songs[0].get_song_name
  end

  def add_guest()
    puts "What is the new guest's name?"
    guest_name = gets.chomp
    puts "What is the new guest's favourite song title?"
    guest_fav_song = gets.chomp

    # (guest_name.downcase) = Guest.new(guest_name, guest_fav_song)

    


  end


end