class Guest

attr_reader :name, :fav_song

def initialize (guest_name, fav_song)
@guest_name = guest_name
@fav_song = fav_song
end

def get_name
  @guest_name
end

def get_fav_song
  @fav_song
end

def cheer
"#{@guest_name} cheers loudly and sings along to #{fav_song}."
end

end