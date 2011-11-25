matz = Object.new

def matz.speak
  "Place your burden to machine's shoulders"
end
 
puts matz.class
puts matz.speak()
puts matz.speak
puts matz.speak.class


matz2= Object.new
#matz2.speak



class A
  def self.test
    puts "class test"
  end
  def test
    puts "instance test"
  end
end

A.test
A.new.test

class B
  class <<self
    def test
      puts "class test #{self}"
    end
  end
  def test
    puts "instance test #{self}"
  end
  def to_s
    #puts "B instance"
  end
end

B.test
B.new.test



class Person
end

Person.class_eval do
  def say_hello
   "Hello!"
  end
end

jimmy = Person.new
puts jimmy.say_hello
#Person.say_hello


class Person
end

Person.instance_eval do
  def human?
    true
  end
end

puts Person.human? # true
