# num=[]
# def sqr(num)
#   counter=0
#   newarray=[]
#   num.each do |i|
#     k= i*i
#     newarray[counter]=k
#     counter+=1
#   end
#   return newarray
# end
# sqr([1,2,3,4,5])
numbers = [1,2,3]
def sqrt(haha)
  newarray=haha.collect{|i| i*i}
  puts newarray[4]
  return newarray
end

