def isprime?(num)
  (Math.sqrt(num).floor-1).times do |index|
    return false if num%(index+2) == 0
  end
  return true
end

def find_primes(limit)
  primes = [2, 3]
  number = 5
  while (primes.length != limit)
    primes.push(number) if isprime?(number) 
    number = number+1
  end
  primes
end

#puts find_primes(10001).last
