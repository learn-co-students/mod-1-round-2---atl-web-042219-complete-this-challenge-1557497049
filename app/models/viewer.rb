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
    QueueItem.all.select{|item|item.viewer==self}
  end

  def queue_movies
    Viewer.all.select{|queue|queue.viewer==self}
  end

  def add_movie_to_queue(title)

  end

end

