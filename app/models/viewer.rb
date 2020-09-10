class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username

    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { | review | review.viewer == self }
  end

  def reviewed_movies
    self.reviews.collect { | review | review.movie }
  end

  def reviewed_movie?(movie)
    # Viewer reviewed movie == true
    # Review has Viewer and Movie = false
    self.reviewed_movies == movie
    # binding.pry
  end

  def rate_movie(movie, rating)
      Review.new(self, movie, rating)
  end
  
end
