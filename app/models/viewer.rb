class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username


    self.class.all << self
  end

  def reviews
    Review.all.select {|reviews|reviews.viewer == self}
  end
  
  def reviewed_movies
    #returns an array of Movie instances reviewed by the Viewer instance.
    self.reviews.collect{|viewer| viewer.movie}
  end

  def reviewed_movie?(movie)

   # a Movie instance is the only argument
   # returns true if the Viewer has reviewed this Movie (if there is a Review instance that has this Viewer and Movie), returns false otherwise
    self.reviewed_movies.any?(movie)
  end




  def self.all
    @@all
  end

 
  


end
