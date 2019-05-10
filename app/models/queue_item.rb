class QueueItem
  attr_accessor :viewer, :movie, :rating
  @@all_ques = []

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all_ques << self
  end

  def self.all
    @@all_ques
  end


end
