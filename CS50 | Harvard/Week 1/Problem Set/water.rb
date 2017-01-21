OUNCES_PER_MINUTE = 192
OUNCES_PER_WATER_BOTTLE = 16

print "For how many minutes do you shower: "
duration = gets.to_i

puts "bottles: #{duration*OUNCES_PER_MINUTE/OUNCES_PER_WATER_BOTTLE}"
