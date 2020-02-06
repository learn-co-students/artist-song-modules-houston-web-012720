require_relative 'config/environment.rb'
require 'pry'

a1 = Artist.new
a1.name = "Foo Fighters"

s1 = Song.new
s1.name = "In the Clear"
s1.artist = a1
a1.add_song(s1)

binding.pry
0