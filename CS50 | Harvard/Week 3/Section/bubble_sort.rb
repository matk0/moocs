def bubble_sort(list)
  n = list.size
  loop do
  swapped = false
    (n-1).times do |index|
      if list[index] > list[index + 1]
        list[index], list[index + 1] = list[index + 1], list[index]
        swapped = true
      end
    end

    break if not swapped
  end
  list
end

puts bubble_sort([2,100,200,4210,102441098,1,4,41,3,10,8,7]).inspect
