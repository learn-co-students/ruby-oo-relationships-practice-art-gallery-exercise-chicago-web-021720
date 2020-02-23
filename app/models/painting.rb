class Painting
  attr_accessor :gallery
  attr_reader :title, :price, :artist

  @@all = []

  def initialize(title, price, artist)
    @title = title
    @price = price
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end
end
