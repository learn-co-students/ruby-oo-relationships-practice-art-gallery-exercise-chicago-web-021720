class Gallery

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.paintings.collect {|painting| painting.artist}.uniq
  end

  def artist_names
    self.artists.collect {|artist| artist.name}
  end

  def most_expensive_painting
    self.paintings.max {|a, b| a.price <=> b.price}
  end
end
