require 'pry'
class NextBiggest

  def self.convert(input)
    array_of_digits = input.to_s.split('').map {|x| x.to_i}
    n = array_of_digits.length
    
    if n == 1
      -1
    elsif n == 2
      if array_of_digits[0] < array_of_digits[1]
        array_of_digits[0], array_of_digits[1] = array_of_digits[1], array_of_digits[0]
        return array_of_digits.join.to_i
      else
        -1
      end
    elsif n == 3
      if array_of_digits[1] < array_of_digits[2]
        array_of_digits[1], array_of_digits[2] = array_of_digits[2], array_of_digits[1]
        return array_of_digits.join.to_i
      elsif array_of_digits[0] < array_of_digits[1]
        array_of_digits[0], array_of_digits[1] = array_of_digits[1], array_of_digits[0]
        return array_of_digits.join.to_i
      else
        -1
      end
    else
      if array_of_digits[2] < array_of_digits[3]
        array_of_digits[2], array_of_digits[3] = array_of_digits[3], array_of_digits[2]
        return array_of_digits.join.to_i
      elsif  array_of_digits[1] < array_of_digits[2]
        array_of_digits[1], array_of_digits[2] = array_of_digits[2], array_of_digits[1]
        return array_of_digits
      elsif array_of_digits[0] < array_of_digits[1]
        array_of_digits[0], array_of_digits[1] = array_of_digits[1], array_of_digits[0]
        return array_of_digits
      else
        -1
      end
    end
  end
end
