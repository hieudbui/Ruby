# Convert a integer value to English.
module Stringify
  # Requires an instance variable @value
  def stringify
    if @value == 1
      "One"
    elsif @value == 2
      "Two"
    elsif @value == 3
      "Three"
    end
  end
end



# A Math module akin to Java Math class.
module Math
  # Could be called as a class, static, method
  def add(val_one, val_two)
    BigInteger.new(val_one + val_two)
  end
end


# Base Number class
class Number
  def intValue
    @value
  end
end
 
# BigInteger extends Number
class BigInteger < Number
 
  # Add instance methods from Stringify
  include Stringify
 
  # Add class methods from Math
  extend Math
 
  # Add a constructor with one parameter
  def initialize(value)
    @value = value
  end
end




# Create a new object
bigint1 = BigInteger.new(10)
# Call a method inherited from the base class
puts bigint1.intValue   # --> 10

#puts bigint1.add(-2,4)

# Call class method extended from Math
bigint2 = BigInteger.add(-2, 4)
puts bigint2.intValue   # --> 2

# Call a method included from Stringify
puts bigint2.stringify   # --> 'Two'