
class Dog 
  @@all =[]
 
  attr_reader :name
  
  def initialize(name)
    @name =name
     self.save
    
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def self.print_all
    @@all.uniq.each do |x|
      puts x.name
      
  
  
    end
  end
  
  def save
    @@all << self
  end
  
end
 Dog.new('haha')
Dog.new('lol')
Dog.new('fido')

puts Dog.print_all
puts  Dog.all
