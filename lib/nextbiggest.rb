require 'pry'
class NextBiggest

  def self.convert(input)
    stringput = input.to_s
    # stringified version of the integer input
    if stringput.length == 1
      -1
    else
      convert_two_digits(stringput)
    end
  end

  private

  def self.convert_two_digits(input)
    array_of_digits = input.split('')
    array_of_digits.map! {|x| x.to_i}
    if array_of_digits[0] >= array_of_digits[1]
      -1
    else
      array_of_digits.reverse.join.to_i
    end
  end
end
