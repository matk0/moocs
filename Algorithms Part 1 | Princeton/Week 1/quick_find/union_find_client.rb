load 'quick_find.rb'

quick_find = QuickFind.new 10

File.open(ARGV[0]).each_line do |line|
  p_and_q = line.split(",").map(&:strip)
  p, q = p_and_q[0].to_i, p_and_q[1].to_i

  unless quick_find.connected?(p, q)
    quick_find.union(p, q)
    puts "#{p} + #{q}"
  end
end

print quick_find.union_find
