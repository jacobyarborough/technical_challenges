def palin_sum
  num = 0 
  answer_array = []

  while answer_array.length < 25 do 
    inverse_num = num.to_s.reverse.to_i
    sum = num + inverse_num
    sum_array = sum.to_s.split("")
    if sum >= 1000
      if sum_array == sum_array.reverse
        answer_array << num
      end 
    end 
    num += 1
  end 
  return answer_array
end 


puts palin_sum