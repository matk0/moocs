require 'CSV'

STUDENTS = 1

Student = Struct.new(:name, :house)
students = []

STUDENTS.times do |i|
  students[i] = Student.new
  puts "Student's name:"
  students[i].name = gets

  puts "Student's house:"
  students[i].house = gets

end

file = CSV.open("students.csv", "w+") do |csv|
  students.each { |student| csv << [student.name, student.house]}
end

students.each do |student|
  puts "Student named #{student.name} lives in #{student.house}"
end
