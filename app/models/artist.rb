class Artist

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end

  def create_painting(title, price)
    Painting.new(title, price, self)
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.collect {|painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.collect {|gallery| gallery.city}
  end

  def self.all
    Painting.all.collect {|painting| painting.artist}.uniq
  end

  def self.total_experience
    all_experience = self.all.collect {|artist| artist.years_experience}
    all_experience.sum
  end

  def paintings_per_years_experience
    self.paintings.length / self.years_experience.to_f
  end

  def self.most_prolific
    self.all.max {|a, b| a.paintings_per_years_experience <=> b.paintings_per_years_experience}
  end
end
