# Public: Convert an Integer into an romanized string.
#
# number  - The Integer to be duplicated.
#
# Examples
#
#   romanize(4)
#   # => 'IV'
#
# Returns the number converted to a romanized String.
# Raises error if number = 0
# Raises error if number < 0
def romanize(number)
  raise ArgumentError, 'can not encode zero' if number == 0
  raise ArgumentError, 'can not encode negative number' if number < 0

  # Internal: Integer to handle the input number
  input_number = number

  # Internal: String to handle the roman output
  roman = ""

  # Internal: Hash to handle to roman numbers next to Integers
  roman_numbers = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I",
  }


  roman_numbers.each do |value, letter|

    # Internal: Inserts current roman letter x times.
    roman << letter*(input_number / value)

    # Internal: Decreases the input_number via modulo value.
    #   Modulo divides input_number/value evenly, the rest of the numbers that can't be evenly divided gets pushed into input_number.
    input_number = input_number % value
  end

  return roman

end
