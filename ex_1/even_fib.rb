max = 22
fib = [0, 1]

while fib[-1]<=max
  fib.push(fib[-1] + fib[-2])
# puts fib.join(", ")
end

even = []
fib.each do |val|
  if val.remainder(2)==0
    even << val
  puts even.join(", ")
  end

end
sum = even.inject(:+)

puts "The sum is " + sum.to_s

