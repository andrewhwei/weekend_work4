# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module BasicMath

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator
  include BasicMath
end

class FancyCalculator
  include BasicMath

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
simple = SimpleCalculator.new
puts simple.multiply(2,4)
fancy = FancyCalculator.new
puts fancy.square_root(36)
puts fancy.subtract(5,2)