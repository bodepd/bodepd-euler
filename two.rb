def fib(upper_bound=4000000)
  array = [2,3]
  while(array[-1] < upper_bound) do
    array.push(array[-1]+array[-2])
  end
  array 
end
#puts fib.inspect
counter = 0
sum=0
fib.length.times do
  sum = sum + fib[counter] if counter < fib.length
  counter = counter + 3
end
puts sum
