require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

liz = Viewer.new("Liz")
derrick = Viewer.new("Derrick")
patrick = Viewer.new("Patrick")

movie1 = Movie.new("term the germ")
movie2 = Movie.new("Jurgen goes to war")
movie3 = Movie.new("Mod 1 the demise of egos")

que1 = QueueItem.new(liz,movie1,6)
que2 = QueueItem.new(liz,movie3,9)
que3 = QueueItem.new(derrick,movie3,7)
que4 = QueueItem.new(patrick,movie2,4)

liz.queue_items

# liz.queue_movies






# Insert code here to run before hitting the binding.pry
# This is a conv!!enient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
