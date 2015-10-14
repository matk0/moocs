#AMEX 34, 37
#MASTERCARD 51, 52, 53, 54, 55
#VISA 4
#INVALID

# 1. Multiply every other digit by 2, then add these products digits together.
puts "Please provide your credit card number: "
cc_number = "488282246310005"

case cc_number[0..1]
  when "34", "37"
    puts "AMEX"
  when "51", "52", "53", "54", "55"
    puts "MASTERCARD"
  when "40", "41", "42", "43", "44", "45", "46", "47", "48", ""
    puts "VISA"
  else
    puts "It's not any of the supported cards."
end
result = []

(1..cc_number.length).each do |i|
  if i % 2 == 0
    result << (cc_number[i-1].to_i * 2).to_s.split("")
  end
end

input_to_step2 = result.flatten.inject {|sum, x| sum.to_i + x.to_i }
puts input_to_step2

# 2. Add the sum to the sum of the digits that weren't multiplied by 2.
step2_result = 0
(1..cc_number.length).each do |i|
  if i % 2 != 0
    step2_result += cc_number[i-1].to_i
  end
end

puts input_to_step2 + step2_result

# 3. If total % 10 is 0, the number is valid.
if (input_to_step2 + step2_result) % 10 == 0
  puts "Your credit card is legit!"
else
  puts "Your credit card is invalid!"
end


