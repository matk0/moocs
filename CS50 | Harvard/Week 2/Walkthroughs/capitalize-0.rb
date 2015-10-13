s = gets

s.split("").each do |letter|
  if letter >= 'a' && letter <= 'z'
    puts (letter.ord - ('a'.ord - 'A'.ord)).chr
  else
    puts letter
  end
end
