require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tun = Viewer.new("Tun")
evan = Viewer.new("Evan")
will = Viewer.new("Will")

mov1 = Movie.new("Avengers")
mov2 = Movie.new("Alien")
mov3 = Movie.new("Kids")

que1 = QueueItem.new(tun, mov1, 5)
que2 = QueueItem.new(evan, mov3, 3)
que3 = QueueItem.new(will, mov2, 1)
que4 = QueueItem.new(tun, mov3, 2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
