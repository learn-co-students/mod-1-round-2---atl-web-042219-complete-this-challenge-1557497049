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
    QueueItem.all.select { |queue| queue.movie == self }
  end

  def viewers
    queue_items.map { |queue| queue.viewer }
  end

  def average_rating
    r_sum = queue_items.sum { |queue| queue.rating }
    r_count = queue_items.count
    r_avg = ((r_sum.to_f) / (r_count.to_f) ).to_f
  end

  def self.highest_rated
    Movie.all.max_by { |movie| movie.average_rating}
  end
end
