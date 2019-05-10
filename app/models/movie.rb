class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items 
    QueueItem.all.select { |que| que.movie == self}
  end

  def viewers #array of viewer instance 
    # QueueItem.all.select { |que| que.movie == self}.map { |x| x.viewer}
    queue_items.map { |queue| queue.viewer }
  end

  def average_rating #return number
    x = QueueItem.all.select { |x|x.movie == self}.map { |x|x.rating}
    x.sum / (x.length)
  end

  def self.highest_rated 
   QueueItem.all.select {|x| x.movie == self}.sort { |x|x.rating}.sort { |x| x.movie}.first 
  end
  

end
