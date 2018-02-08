require 'pry'
class NextBiggest

  def self.convert(input)
    array = input.to_s.split('').map {|x| x.to_i}
    n = array.length

    if n == 1
      -1
    elsif n == 2
      if array[0] < array[1]
        swapping(array, n-2)
      else
        -1
      end
    elsif n == 3
      if array[1] < array[2]
        swapping(array, n-2)
      elsif array[0] < array[1]
        swapping(array, n-3)
      else
        -1
      end
    else #elsif n == 4
      if array[2] < array[3]
        swapping(array, n-2)
      elsif  array[1] < array[2]
        swapping(array, n-3)
      elsif array[0] < array[1]
        swapping(array, n-4)
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
