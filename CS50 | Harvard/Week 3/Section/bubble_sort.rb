def bubble_sort(list)
  n = list.size
  m = 1
  loop do
  swapped = false
    (n-m).times do |index|
      if list[index] > list[index + 1]
        list[index], list[index + 1] = list[index + 1], list[index]
        swapped = true
      end
    end
    m += 1
    break if not swapped
  end
  list
end

puts bubble_sort([2,100,200,4210,102441098,1,4,41,3,10,8,7])
