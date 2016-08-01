class Guest

  attr_reader :guests

  def initialize (guests)
    @guests = guests
  end

  def get_name(index = 0)
    @guests[index][:name]
  end

  def get_fav_song(index = 0)
    @guests[index][:fav_song]
  end

  def get_funds(index = 0)
    @guests[index][:funds]
  end

  def remove_funds(money, index = 0)
    @guests[index][:funds] -= money
  end

  def cheer(index = 0)
    "#{@guests[index][:name]} cheers loudly and sings along to #{@guests[index][:fav_song]}."
  end

  def get_fav_song_by_name(name)
    (@guests.find {|guest| guest[:name] == name})[:fav_song]
  end

  def get_funds_by_name(name)
    (@guests.find {|guest| guest[:name] == name})[:funds]
  end

  def get_guest_list()
    @guests.map {|guest| guest[:name]}
  end

  # def get_guest_index(name)
  #   array = @guests
  #   index_map = Hash[array.map.with_index.to_a]
  #   return index_map[name]
  # end

end