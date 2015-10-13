def get_positive_int
  n = 0
  while n < 1 do
    puts "Please give me a positive int."
    n = gets.to_i
  end
  n
end

n = get_positive_int
puts "Thanks fork the positive int #{n}."
