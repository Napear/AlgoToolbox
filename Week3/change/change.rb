def get_change(n, min = 0)
  return min if n == 0

  if n>=10
    get_change(n-10, min+1)
  elsif n>= 5
    get_change(n-5, min+1)
  elsif n>=1
    get_change(n-1, min+1)
  end

end

n = gets.chomp.to_i
puts get_change(n)