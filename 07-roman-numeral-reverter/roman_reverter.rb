class Roman

  def self.reverter(roman)
    # call helper method to convert roman string into arr of translated decimal values
    dec_arr = converter(roman)
    # iterate through array in reverse order
    # to catch subtractive notation
    i = dec_arr.length - 1
    converted = 0
    while i >= 0 do
      # when reach 1st digit add it to the dec_arr converted
      if i == 0
        converted += dec_arr[0]
        i -= 1
        # catch all conditions where the second value - the first value is a factor or 9
        # && account for repeated roman numerals that would be considered true in 1st conditional
        # b/c zero is a factory of any number - we want non zero factors of 9
      elsif (dec_arr[i] - dec_arr[i - 1]) % 9 == 0 && dec_arr[i] - dec_arr[i - 1] > 0
        converted += 9 * ((dec_arr[i] - dec_arr[i - 1]) / 9)
        i -= 2 # decrement by 2 elements since both get calculated if condition true
        # account for repeated roman numerals - only want non-zero factors of 4
      elsif (dec_arr[i] - dec_arr[i - 1]) % 4 == 0 && dec_arr[i] - dec_arr[i - 1] > 0
        converted += 4 * ((dec_arr[i] - dec_arr[i - 1]) / 4)
        i -= 2
      else # otherwise nothing special just add the value and decrement i
        converted += dec_arr[i]
        i -= 1
      end

    end

  return converted
  end
  
  def self.converter(roman_numeral)
    n_hash = {
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    }
    roman_arr = roman_numeral.split('')
    decimal_arr = []
    roman_arr.each do |letter|
      letter = letter.to_sym
      if n_hash.key?(letter)
        decimal_arr << n_hash[letter]
      end
    end
    return decimal_arr
  end
  

end

### ORIGINAL ELSIF STATMENTS
# elsif dec_arr[i] == 10 && dec_arr[i - 1] == 1
#   converted += 9
#   i -= 2
# elsif dec_arr[i] == 100 && dec_arr[i - 1] == 10
#   converted += 90
#   i -= 2
# elsif dec_arr[i] == 1000 && dec_arr[i - 1] == 100
#   converted += 900
#   i -= 2
# elsif
#   dec_arr[i] == 5 && dec_arr[i - 1] == 1
#   converted += 4
#   i -= 2
# elsif
#   dec_arr[i] == 50 && dec_arr[i - 1] == 10
#   converted += 40
#   i -= 2
#
Roman.reverter("XXX")