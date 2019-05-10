require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


blake = Viewer.new("blake")
taylor = Viewer.new("taylor")
hanaa = Viewer.new("hanaa")


thedarkknight = Movie.new("The Dark Knight")
endgame = Movie.new("Avengers: Endgame")
inception = Movie.new("Inception")


test1 = QueueItem.new(blake, thedarkknight, 5)
test2 = QueueItem.new(taylor, endgame, 5)
test3 = QueueItem.new(hanaa, inception, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
