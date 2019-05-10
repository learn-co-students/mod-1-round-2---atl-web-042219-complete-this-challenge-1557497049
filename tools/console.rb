require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rush_one = Movie.new("Rush One")
rush_two = Movie.new("Rush Two")
rush_three = Movie.new("Rush Three")

bill = Viewer.new("Billions")
jill = Viewer.new("Jillions")
gabe = Viewer.new("Just Gabe")

que_one = QueueItem.new(bill, rush_one, 4)
que_two = QueueItem.new(jill, rush_two, 3)
que_three = QueueItem.new(gabe, rush_three, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
