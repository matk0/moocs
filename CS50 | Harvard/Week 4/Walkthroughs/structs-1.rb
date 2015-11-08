require 'CSV'

STUDENTS = 1

students = []

STUDENTS.times do |i|
  hash = {}
  puts "Student's name:"
  hash[:name] = gets

  puts "Student's house:"
  hash[:house] = gets

  students << hash
end

file = CSV.open("students.csv", "w+") do |csv|
  students.each { |student| csv << [student[:name], student[:house]] }
end

students.each do |student|
  puts "Student named #{student[:name]} lives in #{student[:house]}"
end
