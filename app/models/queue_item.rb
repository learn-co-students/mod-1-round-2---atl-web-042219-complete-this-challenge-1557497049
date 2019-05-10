class QueueItem

  attr_reader :viewer, :movie
  attr_accessor :rating

  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating.to_i
      if @rating > 5
        @rating = 5
      elsif @rating < 1
        @rating = 1
      end
    @@all << self
  end

  def self.all
    @@all
  end

end
