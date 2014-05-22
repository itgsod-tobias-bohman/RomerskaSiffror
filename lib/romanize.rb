def romanize(number)
  raise ArgumentError, 'can not encode zero' if number == 0
  raise ArgumentError, 'can not encode negative number' if number < 0

  input_number = number
  roman = ""
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
    roman << letter*(input_number / value)
    input_number = input_number % value
  end

  return roman

end
