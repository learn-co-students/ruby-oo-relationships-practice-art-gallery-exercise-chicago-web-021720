require_relative '../config/environment.rb'



bob = Artist.new("Bob", 5)
gwen = Artist.new("Gwen", 7)
jackie = Artist.new("Jackie", 2)

tate = Gallery.new("Tate", "London")
whitney = Gallery.new("Whitney", "NYC")

bob.create_painting("Butts", 10000).gallery = tate
gwen.create_painting("Heyo", 30000).gallery = tate

bob.create_painting("Backs", 100000).gallery = whitney
gwen.create_painting("Heyo 2", 350000).gallery = whitney
jackie.create_painting("My First Painting", 40000).gallery = whitney

binding.pry

puts "Bob Ross rules."
