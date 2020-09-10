# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jaws = Movie.new("Jaws")
bee = Movie.new("Bee Movie")
waco = Movie.new("Waco")
johnflower = Movie.new("Life of a Johnflower")

john = Viewer.new("jtree1000")
john2 = Viewer.new("jtree2000")
tyler = Viewer.new("LetsMakeSoap")
mac = Viewer.new("BigMacTonight")
karen = Viewer.new("watiscompooter")

good = Review.new(john, johnflower, 9)
ok = Review.new(john2, johnflower, 7)
bad = Review.new(tyler, bee, 5)
worst = Review.new(karen, jaws, 1)
great = Review.new(john2, jaws, 10)
lesgo = Review.new(mac, bee, 8)
better = Review.new(karen, bee, 4)
comenow = Review.new(mac, waco, 9)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
