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

  def queue_items
    QueueItem.all.select {|x| x.viewer == self}
  end

  def queue_movies
    self.queue_items.map {|x| x.movie }
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie, nil)
  end

  def rate_movie(movie, rating)
    if self.queue_items.map do |x|
      x.movie == movie
      x.rating = rating
    end
    else
      QueueItem.new(self, movie, rating)
    end
  end
end
