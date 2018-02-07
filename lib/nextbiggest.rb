require 'pry'
class NextBiggest

  # def digits2(number2)
  #   arrDigits = number2.to_s.split('')
  #   arrDigits.map! {|x| x.to_i}
  #   if arrDigits[0] >= arrDigits[1]
  #     -1
  #   else
  #     arrDigits.reverse.join.to_i
  #   end
  # end

  def self.convert(input)
    stringput = input.to_s
    # stringified version of the integer input
    if stringput.length == 1
      -1
    else
      # digits2(input)
      arrDigits = stringput.split('')
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
