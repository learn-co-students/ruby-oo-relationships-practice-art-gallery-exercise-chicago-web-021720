class Painting

    attr_reader :title
    attr_accessor :gallery, :artist, :price

    @@all = []

    def self.all
        @@all
    end

    def self.total_price
        @@all.map { |pa| pa.total_price }.sum
    end

    def initialize(title, price, gallery, artist)
        @title = title
        @price = price
        @gallery = gallery
        @artist = artist
        @@all << self
    end

end
