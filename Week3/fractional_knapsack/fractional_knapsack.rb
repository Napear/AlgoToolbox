def get_optimal_value(capacity, items, value = 0)
  return value.round(3) if capacity==0 || items.empty?
  item = items.shift
  if item[1] <= capacity
    get_optimal_value(capacity - item[1], items, value + item[0])
  else
    frac_value = (item[0].to_f/item[1])*capacity
    (frac_value + value).to_f.round(3)
  end
end

def get_values
  gets.chomp.split(' ').map(&:to_i)
end

n, capacity = get_values
items = []
n.times { items << get_values }
# sort the items in descending order by value per unit of weight
items.sort! { |x, y| y[0].to_f/y[1] <=> x[0].to_f/x[1] }
puts get_optimal_value(capacity, items)