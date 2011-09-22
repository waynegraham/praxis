name = "Graham, Wayne"
grades = [56, 47, 0]
n_grades = grades.length
sum = grades.inject(:+)
average = sum/n_grades
puts "Name: " + name
puts "Exams: " + grades.join(", ").to_s
puts "Average: " + average.to_s
if average>=90
  lg="A"  
elsif average>=80 && average<90
  lg="B"
elsif average>=70 && average<80
  lg="C"
elsif average>=60 && average<70
  lg="D"
else
  lg="F"
end
puts "Grade: " + lg.to_s
if average <= 60
  puts "Student failed."
else
  puts "Student passed."
end

