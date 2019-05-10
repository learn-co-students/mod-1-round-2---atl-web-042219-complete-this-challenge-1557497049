require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

vie1 = Viewer.new("park")
vie2 = Viewer.new("lee")
vie3 = Viewer.new("gu")

mov1 = Movie.new("hello")
mov2 = Movie.new("bye")
mov3 = Movie.new("love")

que1 = QueueItem.new(vie1, mov1, 100)
que2 = QueueItem.new(vie2, mov2, 2)
que3 = QueueItem.new(vie3, mov3, 10)
que4 = QueueItem.new(vie3, mov3, 5)
que5 = QueueItem.new(vie2, mov3, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
