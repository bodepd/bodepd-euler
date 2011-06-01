def palindronesearch(upper_limit=999, interval_size='5')
  palindrones=[]
  highest_sum=0
  upper_limit.times do |index|
    return palindrones if highest_sum > upper_limit-index
    (index+1).times do |index2|
      if ispalindron?((upper_limit-index) * (upper_limit-index2))
        palindrones.push([upper_limit-index, upper_limit-index2, (upper_limit-index) * (upper_limit-index2), (upper_limit-index)+(upper_limit-index2) ])
        tmp_highest_sum=(upper_limit-index)+(upper_limit-index2)-upper_limit
        highest_sum = tmp_highest_sum if tmp_highest_sum > highest_sum
      end
    end
  end
end

def ispalindron?(num)
  char_a=num.to_s.chars.to_a
  (char_a.length/2).times do |index|
    return false unless char_a[index] == char_a[-1-index]    
  end
  return true
end

puts palindronesearch(999).inspect
