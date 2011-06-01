
def get_multiples(multiple, upper_bound=1000)
  accum = []
  ((upper_bound-1)/multiple+1).times do |index|
    accum.push(index*multiple)
  end
  accum
end

threes = get_multiples(3, 1000)
fives = get_multiples(5, 1000)
puts (threes | fives).reduce(0, :+)


