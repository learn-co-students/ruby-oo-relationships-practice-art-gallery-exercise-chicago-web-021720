class Artist
    attr_reader :name, :years_experience

    @@all = []

    def self.all
        @@all
    end

    def self.total_experience
        @@all.map { |ar| ar.years_experience }.sum
    end

    def most_prolific
        @@all.max_by { |ar| 1.0 * ar.years_experience / ar.paintings.length }
    end

    def initialize(name, years_experience)
        @name = name
        @years_experience = years_experience
        @@all << self
    end

    def paintings
        Painting.all.find_all { |pa| pa.artist == self }
    end

    def galleries
        self.paintings.map { |pa| pa.gallery }.uniq
    end

    def cities
        self.galleries.map { |ga| ga.city }.uniq
    end

    def create_painting(title, price, gallery)
        Painting.new(title, price, gallery, self)
    end

end
