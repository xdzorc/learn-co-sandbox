
def batch_badge_creator(array)
  newarray=array.collect{|x| puts "Hello, my name is #{x}."}
  return newarray
end

def assign_rooms(array)
  newarray=array.each_with_index {|a,b| puts"Hello,#{a}! You'll be assigned to room #{b+1}!"}
  return newarray
end

def printer(array)
  batch_badge_creator(array).each do |x|
    puts"#{x}"
  end
  assign_rooms(array).each do |y|
    puts"#{y}"
  end

end

# batch_badge_creator(["abe","daz","cruz","eli"])
# assign_rooms(["abe","daz","cruz","eli"])
printer(["abe","daz","cruz","eli"])