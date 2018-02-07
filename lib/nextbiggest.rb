require 'pry'
class NextBiggest

  # def digits2(number2)
  #   arr = number2.split('')
  #   if arr[0] <= arr[1]
  #     -1
  #   elsif number2 = 12
  #     21
  #   else
  #     63
  #   end
  # end

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
      # digits2(input)
      arrDigits = input.to_s.split('')
      # split the digits into an array (they are stored as strings)
      arrDigits.map! {|x| x.to_i}
      # this is remapping over the array and turning the array of strings
      if arrDigits[0] >= arrDigits[1]
        -1
      else
        arrDigits.reverse.join.to_i
      end
    end
  end

end
