# 1. Get a card number from the user
puts "Please provide your credit card number: "
# for testing purposes let's use the number provided in the exercise
cc_number = "378282246310005"

# 2. Determine which card it is.
#AMEX start with 34, 37
#MASTERCARD start with 51, 52, 53, 54, 55
#VISA start with  4

case cc_number[0..1]
  when "34", "37"
    puts "AMEX"
  when "51", "52", "53", "54", "55"
    puts "MASTERCARD"
  when "40", "41", "42", "43", "44", "45", "46", "47", "48", "49"
    puts "VISA"
  else
    puts "It's not any of the supported cards."
end

# 3. Multiply every other digit by 2, starting with the number’s second-to-last digit, and then add those products' digits together. 

#multiply every digit by 2
digits = cc_number.split("").map {|digit| digit.to_i}
multiplied_by_2 = []

digits.each_with_index do |digit, index|
  if index % 2 != 0
    multiplied_by_2 << digit * 2
  end
end

#turn products into digits
products_digits = [] 
multiplied_by_2.each do |product|
  products_digits <<  product.to_s.split("")
end

#sum those digits
products_digits_sum = 0
products_digits.flatten.each do |digit|
  products_digits_sum += digit.to_i
end

# 4. Add the sum to the sum of the digits that weren’t multiplied by 2.
sum_the_ones_not_multiplied =  0

(0..(digits.count-1)).each do |i|
  if i % 2 == 0
    sum_the_ones_not_multiplied += digits[i]
  end
end
# 5. If the total’s last digit is 0 (or, put more formally, if the total modulo 10 is congruent to 0), the number is valid! 
total = products_digits_sum  + sum_the_ones_not_multiplied
puts total

if total % 10 == 0
  puts "Your card is legit!"
else
  puts "Your card is not legit!"
end
