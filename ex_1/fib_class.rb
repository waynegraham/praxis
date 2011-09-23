# An incredibly retarded way of solving this problem using classes

class FiboPairs
  def initialize(max)
    @max = max
    @fib = [0,1]
    @even = []
    @sum = 0
  end

  def stack
    while @fib[-1] < @max
      @fib.push(@fib[-1] + @fib[-2])
    end
    if @fib[-1] > @max
      @fib.pop
    end
    @fib
  end

  def pair
    stack
    @fib.each do |val|
      if val.remainder(2) == 0
        @even << val
      end
    end
    @even
  end

  def total
    pair
    @sum = @even.inject(:+)
    @sum
  end

 # def to_s
 #   @max
 # end

  def maximum
    @max.to_s
  end
end

big = FiboPairs.new(4000000)
puts "The list of fibonacci numbers below " + big.maximum + " is:"
puts big.stack.join(", ")
puts
puts "The list of even fibonacci numbers below " + big.maximum + " is:"
puts big.pair.join(", ")
puts
puts "The sum of all the even fibonacci numbers is:"
puts big.total
