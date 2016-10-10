steps = 0
while steps <= 0 || steps > 23
  puts "How many steps should the pyramid have?"
  steps = gets.to_i
end

(1..steps).each do |step|
  puts (" ") * (steps-step) + ("#") * (step + 1) + ("  ") + ("#") * (step + 1) + (" ") * (steps-step)
end
