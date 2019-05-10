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
    QueueItem.all.select { |queue| queue.viewer == self }
  end

  def queue_movies
    queue_items.map { |queue| queue.movie }
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    rating_movie = QueueItem.all.find { |queue| queue.movie == movie && queue.rating == rating }
    if rating_movie
      rating_movie.rating = rating
    else
      QueueItem.new(self, movie, rating)
    end
  end
end
