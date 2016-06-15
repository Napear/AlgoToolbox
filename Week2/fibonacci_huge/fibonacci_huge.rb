# TODO: determinant_fib blows up the stack, find better algo
def determinant_fib(n)
  if n%2 == 0
    k = n/2
    (2*determinant_fib(k-1)+determinant_fib(k))*determinant_fib(k)
  else
    k = (n+1)/2
    determinant_fib(k)*determinant_fib(k) + determinant_fib(k-1)*determinant_fib(k-1)
  end
end

a, b = gets.chomp.split(' ').map(&:to_i)

puts determinant_fib(a) % b