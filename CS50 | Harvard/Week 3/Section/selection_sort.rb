# Algorithm
# 1. Find the smallest unsorted value.
# 2. Swap that value with the first unsorted value.
# 3. Repeat from Step 1 if there are still unsorted items.

def selection_sort(list)
  n = list.size
  (n-1).times do |i|
    smallest_position = list.index(list[i..n].min)
    list[i], list[smallest_position] = list[i..n].min, list[i]
  end
  list
end

puts selection_sort([1, 19, 8, 4, 3101, 239, 32, 52])
