s = gets

class String
  def is_lower?
    self == self.downcase
  end
end

s.split("").each do |letter|
  print letter.upcase
end
