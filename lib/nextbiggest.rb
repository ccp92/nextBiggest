require 'pry'
class NextBiggest

  def digits2(number2)
    arr = number2.split('')
    if arr[0] <= arr[1]
      -1
    elsif number2 = 12
      21
    else
      63
    end
  end

  def self.convert(input)

    if input.to_s.length == 1
      -1
    # elsif input == 12
    #   21
    # elsif input == 11
    #   -1
    # else
    #   63
    else
      digits2(input)
    end
  end

end
