def find_path_triple(num)
  squares = [1]
  number=2
  while(number < num)
    squares.push(number**2)
    number = number+1
  end
  squares.pop
  squares.each do |first_num|
    squares.each do |second_num|
      if second_num > first_num
        squares.each do |third_num|
          if third_num > second_num
            choose = [first_num, second_num, third_num]
            if choose[0]+choose[1]==choose[2]
              puts choose.inspect
              sum = choose.inject(0) {|x,y| 
                x+Math.sqrt(y)
              }
              puts sum
              return choose.inject(1) {|x,y| x*Math.sqrt(y) } if sum==num
            end
          end
        end
      end
    end
  end
end

puts find_path_triple(1000)
