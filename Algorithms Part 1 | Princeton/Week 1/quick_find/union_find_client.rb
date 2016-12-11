load 'quick_find.rb'
require 'byebug'

union_find = QuickFind.new 10

if ARGV.empty?
  puts "Please enter the path to a file from which to read the values."
end

File.open(ARGV[0]).each_line do |line|
  p_and_q = line.split(",").map(&:strip)
  p, q = p_and_q[0].to_i, p_and_q[1].to_i

  unless union_find.connected?(p, q)
    union_find.connect(p, q)
    puts "#{p} + #{q}"
  end
end

print union_find.union_find
