require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


mov_1 = Movie.new("thor")
mov_2 = Movie.new("welcome")
mov_3 = Movie.new("glass")


viewer_1 = Viewer.new("apatel015")
viewer_2 = Viewer.new("kpatel016")
viewer_3 = Viewer.new("zpatel019")

#viewer and movie ====> instance
que_1 = QueueItem.new(viewer_1, mov_1, 5)
que_2 = QueueItem.new(viewer_2, mov_2, 4)
que_3 = QueueItem.new(viewer_3, mov_3, 3)









binding.pry
0 #leave this here to ensure binding.pry isn't the last line
