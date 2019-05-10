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
    QueueItem.all.select {|all_ques| all_ques.viewer == self}
  end

  def queue_movies
    queue_items.select {|viewers| viewers.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    QueueItem.all.find do |ques|
    if ques.movie.title == movie
      QueueItem.all.find {|ques| ques.rating = rating}
    else
      QueueItem.new(self, movie, rating)
      end
    end
  end
end
