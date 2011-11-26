class Message
  attr_accessor :message
  def initialize(m)
    @message = m
  end
end

m=Message.new("message")
puts m.message

m.message="bar"
puts m.message



class Ninja
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

drew = Ninja.new("Drew")
adam = Ninja.new("Adam")


class Mammal  
  def walk
    puts "I am walking"
  end
  def breathe  
    puts "inhale and exhale"  
  end  
end  
  
class Cat < Mammal  
  def speak  
    puts "Meow"  
  end  
end  

rani=Cat.new
rani.speak
rani.walk



class Animal
  def eats
    "food"
  end
  def lives_in
    "the wild"
  end
end

class Pig < Animal
  def lives_in
    "farm"
  end
end

babe = Pig.new

babe.lives_in
puts babe.eats

module A
  def A.hi
    "hi"
  end
  class A1
    def print
      "hi"
    end
  end
end

puts A.hi
puts A::A1.new.print