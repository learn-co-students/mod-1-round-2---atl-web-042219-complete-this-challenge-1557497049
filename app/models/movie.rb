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
    QueueItem.all.select {|x| x.movie == self }
  end

  def viewers
    self.queue_items.map {|x| x.viewer }
  end

  def average_rating
    arry = self.queue_items.map {|x| x.rating }
    average = arry.sum.to_f / arry.count.to_f
  end

  def self.highest_rated
    Movie.all.average_rating.max_by {|x| x.rating}
  end




end
