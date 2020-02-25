class Gallery

  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all
    @@all
  end
  def self.paintings
    Painting.all.select{ |painting| painting.gallery == self}
  end
  def self.artists
    artistsingallery = self.paintings.map{ |painting| painting.artist}
    artistsingallery.uniq
  end
  def self.artist_names
    self.artists.map{ |artist| artist.name }
  end
  def most_expensive_painting
    self.paintings.max_by{ |painting| painting.price }
  end
end
