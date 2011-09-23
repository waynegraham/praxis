max = 4000000
fib = [0, 1]

while fib[-1]<=max
  fib.push(fib[-1] + fib[-2])
end

even = []
fib.each do |val|
  if val.remainder(2)==0
    even << val
  end
end
sum = even.inject(:+)

puts "The sum is " + sum.to_s

