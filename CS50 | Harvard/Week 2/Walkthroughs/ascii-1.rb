i = 'A' 

while i <= 'Z' do
  puts "#{i} #{i.ord}"
  i = i.ord.next.chr
end
puts "Done."
