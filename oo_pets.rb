class Owner
  # code goes here
  @@all=[]
  @@count=0
  attr_reader :name, :species
  def initialize(name,species="human")
    @name =name
    @species =species
    @@all << self
  end
  
  def say_species
     "I am a human."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all 
    self.all.clear
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner==self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner==self}
  end
  
  def buy_cat(name)
    Cat.new(name,self)
  
  end
    
  def buy_dog(name)
    Dog.new(name,self)
  end
  
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood ="happy"
    end
  end
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood ="happy"
    end
  end
end

class Cat
  # code goes here
  @@all=[]
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(name, owner,mood="nervous")
    @name =name
    @owner =owner
    @mood =mood
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
 
end

a=Owner.new("daz")
cat_1 = Cat.new("Garfield", a)
cat_2 = Cat.new("Fido", a)
cat_3 = Cat.new("Whiskers", a)
# a.feed_cats

