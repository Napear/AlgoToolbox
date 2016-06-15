def calc_fib(n)
  fib_list = [0, 1]
  return fib_list[n] if n <= 1
  (2..n).each { |i| fib_list << fib_list[i-1] +fib_list[i-2] }
  fib_list[n]
end

n = gets.chomp.to_i
puts calc_fib n
