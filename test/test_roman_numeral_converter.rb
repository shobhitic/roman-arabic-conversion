require 'test/unit'

require 'roman_numeral_converter'
require 'test/test_arabic_to_roman_conversion'
require 'test/test_roman_to_arabic_conversion'


class TestRomanNumeralConverter < Test::Unit::TestCase
  include TestArabicToRomanConversion
  include TestRomanToArabicConversion

  def setup
    @converter = RomanNumeralConverter.new
  end

  def converter
    @converter
  end
end