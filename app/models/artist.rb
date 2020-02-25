class Artist

  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end
  def paintings
    Painting.all.find_all{ |painting| painting.artist == self }
  end
  def galleries
    galleries = self.paintings.map{ |painting| painting.gallery }
    galleries.uniq
  end
  def cities
    self.paintings.map{ |painting| painting.gallery.city}
  end
  def self.total_experience
    self.all.reduce(0){|sum,artist| sum + artist.years_experience}
  end
  def self.most_prolific
    self.all.max_by{|artist| artist.paintings.length/artist.years_experience}
  end
  def create_painting
    Painting.new(title,price,self,gallery)
  end
end
