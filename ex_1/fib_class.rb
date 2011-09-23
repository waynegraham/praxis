# An incredibly idiotic way of solving this problem using classes

# Always think about how other programmmers will use the classes and methods when you are naming Objects and methods

class Fibo

  # I think we only mentioned this in passing, but attr_accessor exposes the attributes to the class
  # e.g sequence = Fibo.new(50).max
  attr_accessor :max
  attr_accessor :fib
  attr_accessor :even
  attr_accessor :sum

  def initialize(max)
    @max = max
    @fib = [0,1] 
    @even = []
    @sum = 0
  end

  # Think about the name of this method. Stack will probably confuse folks who have done anything
  # with programming structures as it is a LIFO with some very specific behaviors (e.g. top, remove, 
  # isempty).  
  def stack
    while @fib[-1] < @max
      @fib.push(@fib[-1] + @fib[-2])
    end
    
    # Will this code ever be reached? Should only get here if there is an error
    if @fib[-1] > @max
      @fib.pop
    end
    @fib
  end

  # You're right on the cusp of recursion (a good thing).
  def pair
    @fib.each do |val|
      if val.remainder(2) == 0
        @even << val
      end
    end
    @even
  end

  def total
    @even.each do |num|
      @sum = @sum + num
    end
    @sum
  end

 # def to_s
 #   @max
 # end

  def maximum
    @max.to_s
  end
end

# This is pretty good. 

puts "Enter a number below:"
max = gets.chomp
puts
local = Fibo.new(max.to_i)
stack = local.stack
pair = local.pair
total = local.total
puts "The list of fibonacci numbers below or equal to " + local.maximum + " is:"
puts stack.join(", ")
puts
puts "The list of even fibonacci numbers below or equal to " + local.maximum + " is:"
puts pair.join(", ")
puts
puts "The sum of all the even fibonacci numbers is:"
puts total
puts
