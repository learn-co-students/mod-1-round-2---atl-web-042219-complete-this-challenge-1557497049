class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title

    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select { |que| que.movie == self}
  end 

  def viewers
    que = QueueItem.all.select { |que| que.movie == self}
    que.map { |que| que.viewer }
  end 


  def ratings #helper method
    rate = QueueItem.all.select { |que| que.movie == self}
    rate.map { |rate| rate.rating }
  end

  def average_rating #blergggggggg
    sum = 0
    total = self.ratings.count
    self.ratings.each { |ratings| sum += ratings.rating }
    average = sum/total
  end

end
