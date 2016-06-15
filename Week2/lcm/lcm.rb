def gcd(a,b)
  return a if b == 0
  gcd(b, a%b)
end

def lcm(a,b)
  (a*b)/gcd(a,b)
end

a, b = gets.chomp.split(' ').map(&:to_i)
puts lcm a, b