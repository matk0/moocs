# Write a program that encrypts messages using Vigenere's cipher.

# Your program must accept a single command-line argument: a keyword, k. Let’s call it k for the sake of discussion. If your program is executed without any command-line arguments or with more than one command-line argument, your program should yell at the user.

if ARGV.empty? || ARGV.count > 1
  raise StandardError, "Please provide one keyword as an argument to this program."
end

#We trust the user to input an alpha only string
k = ARGV[0]
shifts = []
k.split("").each do |letter|
  case letter.ord
  when 65..90
    shifts << (letter.ord - 65) % 26
  when 97..122
    shifts << (letter.ord - 97) % 26
  end
end

puts "Provide a string you want to cypher:"
text_to_cypher = "Meet me at the park at eleven am" # STDIN.gets
#should return Negh zf av huf pcfx bt gzrwep oz
counter = 0

text_to_cypher.split("").each do |letter|
  case letter.ord 
  when 65..90  
    shift = (letter.ord - 65 + shifts[counter % shifts.length]) % 26
    print (65 + shift).chr
    counter += 1
  when 97..122
    shift = (letter.ord - 97 + shifts[counter % shifts.length]) % 26
    print (97 + shift).chr
    counter += 1
  else
    print letter
  end
end
