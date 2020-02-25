require_relative '../config/environment.rb'

moma = Gallery.new("Museum of Modern Art", "NYC")
chicon = Gallery.new("Museum of Contemporary Art", "Chicago")
louvre = Gallery.new("Musee du Louvre", "Paris")
tehran = Gallery.new("Tehran Museum of Contemporary Art", "Tehran")

vangogh = Artist.new("Vincent Van Gogh", 2)
davinci = Artist.new("Leonardo da Vinci", 50)
pollock = Artist.new("Jackson Pollock", 20)


starry = Painting.new("De sterrennacht", 10 ** 7, chicon, vangogh)
monalisa = Painting.new("Monna Lisa", 10 ** 8, louvre, davinci)
num17 = Painting.new("Number 17", 2 * 10 ** 8, moma, pollock)

pollock.create_painting("Mural on Indian Red Ground", 25000000, tehran)
vangogh.create_painting("Sorrow", 7500000, louvre)

p Artist.all
p Gallery.all
p Painting.all

p Artist.total_experience
p vangogh.paintings
p pollock.galleries
print "Louvre paintings:\n#{louvre.paintings}"

binding.pry

puts "Bob Ross rules."
