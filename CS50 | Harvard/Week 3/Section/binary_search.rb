def search(value, values)
  lower = 0
  upper = values.count

  while lower <= upper
    middle = (lower + upper) / 2
    if values[middle] == value
      return "Found in position #{middle}."  
    elsif values[middle] < value
      lower = middle + 1
    elsif values[middle] > value
      upper = middle - 1
    end
  end
  return "Not found."
end

# Elements must be sorted!
puts search(10, [1,3,4,5,10,402,3101])
