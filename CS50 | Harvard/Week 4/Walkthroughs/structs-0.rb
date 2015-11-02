STUDENTS = 2

students = []

STUDENTS.times do |i|
  hash = {}
  puts "Student's name:"
  hash[:name] = gets

  puts "Student's house:"
  hash[:house] = gets

  students << hash
end

students.each do |student|
  puts "Student named #{student[:name]} lives in #{student[:house]}"
end
