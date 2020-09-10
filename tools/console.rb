# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Apolo")
m2 = Movie.new("MIB")
m3 = Movie.new("500")

v1 = Viewer.new("Big Bob")
v2 = Viewer.new("Super Marcus")
v3 = Viewer.new("Thickdaddy1000")

#Review  (viewer, movie, rating)

r1 = Review.new(v1, m1, "6")
r2 = Review.new(v2, m2, "4")
r3 = Review.new(v3, m3, "9")
r4 = Review.new(v1, m3, "8")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
