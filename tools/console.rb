require_relative '../config/environment.rb'


a1 = Artist.new("Pablo", 40)
a2 = Artist.new("Georgia", 25)

g1 = Gallery.new("Santa Fe Collective", "Santa Fe" )
g2 = Gallery.new("The Ash Can", "NYC")

p1 = Painting.new("Guernica", "40000", a1, g1)
p2 = Painting.new("The Orchid", "10000", a2, g2)
p3 = Painting.new("A Skull", "2500", a2, g1)


puts "Bob Ross rules."

Pry.start
0
