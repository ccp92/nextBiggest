require 'pry'
class NextBiggest

  def self.convert(input)
    array_of_digits = input.to_s.split('').map {|x| x.to_i}
    #This array_of_digits is split into an array_of_digits of it's individual digits.
    number_of_digits = array_of_digits.length
    #Variable showing the number of digits in the number.

    if number_of_digits == 1
      # if array_of_digits[-1] < array_of_digits[0]
      #   swapping(array_of_digits, number_of_digits-2)
      # else
      #   -1
      # end
      -1
      #The commented out code above shows the progression through the number of digits is linear.

    elsif number_of_digits == 2
      if array_of_digits[0] < array_of_digits[1]
        swapping(array_of_digits, number_of_digits-2)
      else
        -1
      end

    elsif number_of_digits == 3
      if array_of_digits[1] < array_of_digits[2]
        swapping(array_of_digits, number_of_digits-2)
      elsif array_of_digits[0] < array_of_digits[1]
        swapping(array_of_digits, number_of_digits-3)
      else
        -1
      end

    elsif number_of_digits == 4
      if array_of_digits[2] < array_of_digits[3]
        swapping(array_of_digits, number_of_digits-2)
      elsif  array_of_digits[1] < array_of_digits[2]
        swapping(array_of_digits, number_of_digits-3)
      elsif array_of_digits[0] < array_of_digits[1]
        swapping(array_of_digits, number_of_digits-4)
      else
        -1
      end

    elsif number_of_digits == 5
      if array_of_digits[3] < array_of_digits[4]
        swapping(array_of_digits, number_of_digits-2)
      elsif  array_of_digits[2] < array_of_digits[3]
        swapping(array_of_digits, number_of_digits-3)
      elsif array_of_digits[1] < array_of_digits[2]
        swapping(array_of_digits, number_of_digits-4)
      elsif array_of_digits[0] < array_of_digits[1]
        swapping(array_of_digits, number_of_digits-5)
      else
        -1
      end
    end
  end

  private

  def self.swapping(arr, index)
    arr[index], arr[index+1] = arr[index+1], arr[index]
    #Swaps the two array elements that have been compared.
    array_with_swapped_elements = arr.join.to_i
    return array_with_swapped_elements
  end
end
