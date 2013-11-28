class RomanNumeralConverter

  ROMAN_ARABIC = [
    ["M", 1000],

    ["CM", 900],
    ["D", 500],
    ["CD", 400],
    ["C", 100],

    ["XC", 90],
    ["L", 50],
    ["XL", 40],
    ["X", 10],

    ["IX", 9],
    ["V", 5],
    ["IV", 4],
    ["I", 1],
  ]

  def convert(number)
    if number.is_a?(Integer)
      arabic_to_roman(number)
    else
      roman_to_arabic(number)
    end
  end

  def arabic_to_roman(number)
    result = ""

    # Go through our data table and using it, covnert number to its respective
    # Roman number equivalent. Order in Lookup Table IS IMPORTANT.
    ROMAN_ARABIC.each do |roman, arabic|
      while number >= arabic
        result <<  roman
        number -= arabic
      end
    end

    result
  end

  def roman_to_arabic(number)
    result      = 0
    arabic      = Hash[ROMAN_ARABIC]
    arabic[""]  = 0

    chars = number.chars + [""]
    chars.each_cons(2) do |value, next_value|
      if arabic[value] >= arabic[next_value]
        result += arabic[value]
      else
        result -= arabic[value]
      end
    end

    result
  end
end