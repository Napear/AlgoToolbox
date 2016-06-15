def euclidean(a, b)
  return a if b == 0
  euclidean(b, a%b)
end

a, b = gets.chomp.split(' ').map(&:to_i)
puts euclidean a, b