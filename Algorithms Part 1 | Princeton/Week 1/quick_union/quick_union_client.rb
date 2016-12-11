load 'quick_union.rb'

quick_union = QuickUnion.new 10

File.open(ARGV[0]).each_line do |line|
  p_and_q = line.split(",").map(&:strip)
  p, q = p_and_q[0].to_i, p_and_q[1].to_i

  unless quick_union.connected?(p, q)
    quick_union.union(p, q)
    puts "#{p} + #{q}"
  end
end

print [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
puts " "
print quick_union.union_find
