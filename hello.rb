class Triangle
  # write code here
  attr_accessor :a, :b, :c, :array
  @array =[]
  def initialize(a,b,c)
    @a =a
    @b =b
    @c =c
    @array =[a,b,c]
  end
  
  def kind 
    # array =[@a,@b,@c]
    if @array.all? {|x| x>0 && (@array.sum -x)>=x}
      # if a==b && b==c
      #   :equilateral
      # elsif (@array.size -@array.uniq.size) !=0
      #   :isosceles
      # else
      #   :scalene
      # end
      if @array.uniq.length == 1
        return :equilateral
      elsif array.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
     else
       begin
         raise TriangleError
         rescue TriangleError
       end
    end
  end
  
  class TriangleError < StandardError
  end
    
end

a=Triangle.new(2,3,5)
a.kind