pop = [0, 10]
counter = 0
puts "Enter a number of years: "
years = gets.chomp
while counter < years.to_i
  growth = pop[-1]+pop[-2]
  pop << growth
  counter += 1
end
puts pop
puts "The total population at the end of " + years.to_s + " years will be " + pop[-1].to_s
