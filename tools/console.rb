require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

view1 = Viewer.new("Preston")
view2 = Viewer.new("Anne")

movie1 = Movie.new("Casino Royale")
movie2 = Movie.new("The Hangover")
movie3 = Movie.new("Inception")

q1 = QueueItem.new(view1, movie1, 1)
q2 = QueueItem.new(view1, movie2, 5)
q3 = QueueItem.new(view2, movie3, 4)
q4 = QueueItem.new(view2, movie1, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
