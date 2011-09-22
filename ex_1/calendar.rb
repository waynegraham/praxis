puts "Enter a number of seconds:"
puts pop
STDOUT.flush
seconds = gets.chomp
minutes = seconds.to_f/60
hours = minutes/60
days = hours/24
years = days/365
gregor =years/4
if years.remainder(1) < 0.1
  if years.to_i == 1
    puts "This is about 1 year."
  else
    days = days.to_i-gregor
    years = years.to_i
    puts "This is about " + years.to_s + " years."
  end
else
  if years < 1
    puts "This is less than a year.\nIf you must know. It is exactly " + years.to_s + " of a year."
  else
    days = days-gregor.to_i
    puts "This is about " + years.to_s + " years. Give or take a few hours."
  end
end

