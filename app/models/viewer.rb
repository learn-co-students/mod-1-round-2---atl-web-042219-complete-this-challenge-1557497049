class Viewer
  attr_accessor :username
  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
      #@@all << self
  end

  def self.all
    @@all
  end

  def queue_items
  QueueItem.all.select {|q| q.items == self}
  end

  def queue_movies
    queue_items.map {|q| q.movie}
    end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    if queue_items.map {|q| q.movie == movie
      q.rating = rating}
      end
    #else
    QueueItem.new(self, movie, rating)
  end

end
