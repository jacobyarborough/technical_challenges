require 'pry'

def find_matches(arr1, arr2, arr3)
  i = 0
  j = 0
  k = 0 
  same_array = []

  while (i > -1) do 
    if arr1[i] == arr2[j] && arr2[j] == arr3[k]
      same_array.push(arr1[i])
      if (i < arr1.length - 1)
        i += 1
      end 

      if (j < arr2.length - 1)
        j += 1
      end 

      if (k < arr3.length - 1)
        k += 1
      end 
    end 

    return same_array if i == (arr1.length - 1) && j == (arr2.length - 1) && k == (arr3.length - 1)

    if arr1[i] < arr2[j] || arr1[i] < arr3[k]
      if (i < arr1.length - 1)
        i += 1
      end
    end 

    if arr2[j] < arr1[i] || arr2[j] < arr3[k]
      if (j < arr2.length - 1)
        j += 1
      end
    end 

    if arr3[k] < arr1[i] || arr3[k] < arr2[j]
      if (k < arr3.length - 1)
        k += 1
      end 
    end 
  end 
end 


nums_1 = [1, 2, 4, 5, 8, 10]
nums_2 = [2, 3, 5, 7, 9, 10]
nums_3 = [1, 2, 5, 8, 9, 10]
puts find_matches(nums_1, nums_2, nums_3)