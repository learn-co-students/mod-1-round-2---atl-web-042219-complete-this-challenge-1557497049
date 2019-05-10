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
    QueueItem.all.select {|all_ques| all_ques.movie == self}
  end

  def viewers
    queue_items.select {|movies| movies.viewer}
  end

  def average_rating
    ar = queue_items.map {|movies| movies.rating}
    ar.reduce(:+).to_f / ar.size
  end

  def self.highest_rated
    hm = queue_items.map {|m| m.rating}.max
    #if movie.rating == m.rating.max
    #return movie
    # queue_items.select {|all_ques| all_ques.movie.rating}.max
  end
end
