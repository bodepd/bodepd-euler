require 'seven'
def sum_primes_below_number(limit)
  #primes = [2, 3]
  sum_prime = 5
  number = 5
  while (number < limit)
    sum_prime = sum_prime + number if isprime?(number)
    number = number+1
  end
  sum_prime 
end
puts sum_primes_below_number(2000000).inspect
