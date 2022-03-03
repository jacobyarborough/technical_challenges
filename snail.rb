    require 'pry'
    # Ruby
    # array_matrix = [
    #     [1, 2, 3],
    #     [4, 5, 6],
    #     [7, 8, 9]
    # ];
    # snail(array_matrix) 
    # => [1, 2, 3, 6, 9, 8, 7, 4, 5]

    def print_snail(arr)
      answer_array = []
      while arr.length > 0 
        arr.each do |element|
          if arr.first == element 
            
            element.each do |char|
              answer_array.push(char)

            end 
          end 
        end 
      end 
    end 

    arr = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]

    print_snail(arr)