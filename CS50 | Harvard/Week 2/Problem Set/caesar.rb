# Write a program that encrypts messages using Caesar's cipher.

# Your program must accept a single command-line argument: a non-negative integer. Let’s call it k for the sake of discussion. If your program is executed without any command-line arguments or with more than one command-line argument, your program should yell at the user.

if ARGV.empty? || ARGV[0].to_i <= 0 || ARGV.count > 1
  raise StandardError, "Please provide one positive integer as an argument to this program."
end

k = ARGV[0].to_i

# Prompt the user for a string of plaintext and then output that text with each alphabetical character "rotated" by k positions. Non-alphabetical characters should be outputted unchanged.

puts "Provide a string you want to cypher:"
text_to_cypher = STDIN.gets

text_to_cypher.split("").each do |letter|
  case letter.ord 
  when 65..90  
    shift = (letter.ord - 65 + k) % 26
    print (65 + shift).chr
  when 97..122
    shift = (letter.ord - 97 + k) % 26
    print (97 + shift).chr 
  else
    print letter
  end
end
