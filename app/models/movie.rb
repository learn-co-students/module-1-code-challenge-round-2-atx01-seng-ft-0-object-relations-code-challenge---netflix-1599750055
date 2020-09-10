class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title


    self.class.all << self
  end

  
  def reviews
    #returns an array of all the Review instances for the Movie
    Review.all.select {|reviews|reviews.movie == self}
  end

  def reviewers 
    #returns an array of all of the Viewer instances that reviewed the Movie
      self.reviews.collect {|reviews|reviews.viewer}
  end
  
  
  def self.highest_rated

    
  end

  
  
  def self.all
    @@all
  end



end
