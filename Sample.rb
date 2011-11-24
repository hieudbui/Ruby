puts "hello"


class HelloWorld 
  def initialize(a)
    puts "initialize called with param #{a}"
  end 
  def doHello()  
    puts "Hello World"  
  end  
end  
  
(HelloWorld.new "test").doHello


puts %w(one,two,three)
