s = gets

class String
  def is_lower?
    self == self.downcase
  end
end

s.split("").each do |letter|
  if letter.is_lower? 
    puts letter.upcase
  else
    puts letter
  end
end
