# this is elegant, but what about faster?

def square_sums(range)
  range.to_a.reduce(0, :+)**2
end

def sum_squares(range)
  range.to_a.reduce(0) do |x, y| x+y**2 end  
end

puts square_sums(1..100)-sum_squares(1..100)
