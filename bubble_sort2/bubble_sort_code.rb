a = [10, 8, 3, 5, 2, 4, 11, 18, 20, 33]
loop do
  flag = false
  (a.size - 1).times do |i|
    a1 = a[i]
    a2 = a[i + 1]
    if a1 > a2
      a[i] = a2
      a[i + 1] = a1
      flag = true
    end
    p a
  end
  break unless flag
end
