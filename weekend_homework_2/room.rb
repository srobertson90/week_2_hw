require_relative('song')
require_relative('guest')

class Room

  attr_reader :guests, :songs

def initialize (guests, songs)
@guests = guests
@songs = songs
end

# def remove_guest_by_index(index)
#     return @guests[index]
# end

def add_guest()
  puts "What is the guest's name?"
  name = gets.chomp
  puts "What is #{name}'s favourite song title?"
  fav_song = gets.chomp
  puts "How much money does #{name} have?"
  funds = gets.chomp

  new_guest = {
    name: name,
    fav_song: fav_song,
    funds: funds
  }

  @guests.push(new_guest)
end

def add_song()
  puts "What is the song title?"
  title = gets.chomp
  puts "Who is the artist of #{title}?"
  artist = gets.chomp
  puts "What genre is #{title}"
  genre = (gets.chomp).to_sym

  new_song = {
    title: title,
    artist: artist,
    genre: genre
  }

  @songs.push(new_song)
end

end