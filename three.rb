def factors(num)
  lowest_multiple=num
  factors = []
  num.times do |index|
    break if index > lowest_multiple
    if num%(index+1) == 0
      factors.push(index+1)
      lowest_multiple = num/(index+1)
    end
  end
  factors
end

factors(600851475143).reverse.each do |factor|
  puts factor if factors(factor).length == 2
end
