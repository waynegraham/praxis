def count(max)
  counter = 0
  max.times do |x|
    counter += 1
    puts counter
  end
end

count(10)
