class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do | review |
      review.movie == self
    end
  end

  def reviewers
    self.reviews.collect do | review |
      review.viewer
    end
  end

  def average_rating
    self.reviews.sum { | review | review.rating} / self.reviews.length
  end

  def self.highest_rated
    # find max value for average rating amongst all movies
    Movie.all.max { | movie | movie.average_rating }
  end

end
