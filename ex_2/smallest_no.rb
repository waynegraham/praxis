def smallest (x,y)
  if x < y
    return "#{x} is the smallest number."
  elsif x > y
    return "#{y} is the smallest number."
  else
    return "#{x} and #{y} are the same."
  end
end

puts smallest 6,8
puts smallest 9,4
puts smallest 5,5
