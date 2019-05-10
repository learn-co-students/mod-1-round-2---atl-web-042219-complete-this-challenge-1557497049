class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  
  def queue_items
    QueueItem.all.select { |que| que.viewer == self}
  end

  def queue_movies
    movs = QueueItem.all.select { |que| que.viewer == self}
    movs.map { |movs| movs.movie }
  end 

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end 

  def rate_movie(movie, rating)
    QueueItem.new(self, movie, rating)
  end 

end 

