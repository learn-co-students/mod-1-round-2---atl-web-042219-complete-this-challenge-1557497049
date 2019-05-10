class QueueItem

    attr_accessor :viewer, :movie, :rating
    @@all = []


    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie 
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    # def viewer
    #     self.map{|item|item ==self}
    # end

    def movie
    end

    def rating
    end


end
