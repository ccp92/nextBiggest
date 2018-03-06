require 'pry'
class NextBiggest

  def self.convert(input)
    array = input.to_s.split('').map {|x| x.to_i}
    digits = array.length

    if digits == 1
      if array[-1] < array[0]
        swapping(array, digits-2)
      else
        -1
      end

    elsif digits == 2
      if array[0] < array[1]
        swapping(array, digits-2)
      else
        -1
      end

    elsif digits == 3
      if array[1] < array[2]
        swapping(array, digits-2)
      elsif array[0] < array[1]
        swapping(array, digits-3)
      else
        -1
      end

    elsif digits == 4
      if array[2] < array[3]
        swapping(array, digits-2)
      elsif  array[1] < array[2]
        swapping(array, digits-3)
      elsif array[0] < array[1]
        swapping(array, digits-4)
      else
        -1
      end

    elsif digits == 5
      if array[3] < array[4]
        swapping(array, digits-2)
      elsif  array[2] < array[3]
        swapping(array, digits-3)
      elsif array[1] < array[2]
        swapping(array, digits-4)
      elsif array[0] < array[1]
        swapping(array, digits-5)
      else
        -1
      end
    end
  end

  private

  def self.swapping(arr, index)
    arr[index], arr[index+1] = arr[index+1], arr[index]
    result = arr.join.to_i
    return result
  end
end
