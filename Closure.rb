def whatami(&block)
  block.class
end

def blockwithparam(a, block)
  
  puts a
  block.call
end
b={}
def a
  puts "a"
end
puts whatami {}


blockwithparam(1) {puts "a"}
