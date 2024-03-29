# An incredibly idiotic way of solving this problem using classes

class Fibo
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

puts "Enter a number below:"
max = gets.chomp
puts
local = Fibo.new(max.to_i)
local.stack
local.pair
local.total
puts "The list of fibonacci numbers below or equal to " + local.maximum + " is:"
puts stack.join(", ")
puts
puts "The list of even fibonacci numbers below or equal to " + local.maximum + " is:"
puts pair.join(", ")
puts
puts "The sum of all the even fibonacci numbers is:"
puts total
puts
