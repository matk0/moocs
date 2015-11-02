def sigma(m)
  if m <= 0
    0
  else
    m + sigma(m-1)
  end
end

puts sigma(50)
