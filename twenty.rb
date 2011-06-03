def fac(num)
  (1..num).to_a.reduce(1,:*)
end

puts fac(100).to_s.split('').collect{|x|x.to_i}.reduce(0, :+)
