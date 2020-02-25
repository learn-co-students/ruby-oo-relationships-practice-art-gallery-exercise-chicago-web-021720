require_relative '../config/environment.rb'

artist1 = Artist.new("Adam",33)
artist2 = Artist.new("David",100)
artist3 = Artist.new("Yusef", 22)
gallery1 = Gallery.new("AwesomeGallery","Chicago")
gallery2 = Gallery.new("WeirdGallery","New York")
gallery3 = Gallery.new("CoolGallery","London")
painting1 = Painting.new("greatpainting",1000,artist1,gallery1)
painting2 = Painting.new("greatpainting2",1000,artist1,gallery3)
painting3 = Painting.new("greatpainting3",1000,artist2,gallery3)
manypaintings = artist1.paintings
manygalleries = artist1.galleries
manycities = artist1.cities
adamsexp = Artist.total_experience
mostexp = Artist.most_prolific
newpainting = Artist.


binding.pry

puts "Bob Ross rules."
