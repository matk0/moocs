n = 0

while n <= 0 do
  print "Number of people in the room: "
  n = gets.to_i
end

ages = []

n.times do |n|
  print "Age of person #{n + 1}:"
  ages[n] = gets.to_i
end

print "Time passes."

n.times do |n|
  print "A year from now, person #{n + 1} will be #{ages[n] + 1} years old."
end
