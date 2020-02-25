class Gallery

    attr_reader :name, :city

    @@all = []

    def self.all
        @@all
    end

    def most_expensive_painting
        self.paintings.max_by { |pa| pa.price }
    end

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def paintings
        Painting.all.find_all { |pa| pa.gallery == self }
    end

    def artists
        self.paintings.map { |pa| pa.artist }.uniq
    end

    def artist_names
        self.artists.map { |ar| ar.name }
    end

end