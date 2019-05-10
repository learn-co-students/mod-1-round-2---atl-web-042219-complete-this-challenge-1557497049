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

  def queue_items #return array of queitem that viewer instance
    QueueItem.all.select { |que| que.viewer == self}
  end

  def queue_movies #array of inst of movie
    # QueueItem.all.select { |que| que.viewer == self}.map {  
    #   |queitem| queitem.movie}
      queue_items.map { |queue| queue.movie}
  end

  def add_movie_to_queue(movie) 
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    QueueItem.all.each do |que|
      if que.movie == movie
            rating == rating
      else 
        QueueItem.new(self, movie, rating)
    end
  end
  end
  
end
