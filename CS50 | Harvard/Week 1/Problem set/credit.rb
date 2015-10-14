# 1. Multiply every other digit by 2, then add these products digits together.
puts "Please provide your credit card number: "
cc_number = "378282246310005"

(0..cc_number.length).each do |i|
  puts 'hello' if i % 2 == 0
end

# 2. Add the sum to the sum of the digits that weren't multiplied by 2.
# 3. If total % 10 is 0, the number is valid.


