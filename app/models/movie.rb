class Movie
attr_accessor :title
@@all = []

  def initialize(title)
    @title = title
    self.class.all << self
    #@@all << self
  end

  def self.all
    @@all
  end

def queue_items
  QueueItem.all.select {|q| q.movie == self}
end

def viewers
  queue_items.map {|m| m.viewers}
end

def average_rating
rating = 0
whole_queue = queue_items.map {|q|
rating += q.rating}

rating / whole_queue.length
end

def  self.highest_rated
  queue_item = QueueItem.all.map {|q| q.movies}
  q.movies.sort_by {|q| q.rating}.last
end
end
