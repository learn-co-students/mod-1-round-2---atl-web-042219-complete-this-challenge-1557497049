class QueueItem
    attr_accessor :rating
    attr_reader :viewer, :movie

    @@queue = []

    def initialize(viewer, movie, rating=nil)
        @viewer = viewer 
        @movie = movie
        @rating = rating
        @@queue << self
    end

    def self.all
        @@queue
    end
end
