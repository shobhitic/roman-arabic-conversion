module TestArabicToRomanConversion

  def setup
    @converter = RomanNumeralConverter.new
  end

  def converter
    @converter
  end

  def test_converter_responds_to_convert
    assert converter.respond_to?(:convert), "convert method does not exist"
  end

  def test_converter_converts_one
    assert_equal "I", converter.convert(1)
  end

  def test_converter_converts_two
    assert_equal "II", converter.convert(2)
  end

  def test_converter_converts_five
    assert_equal "V", converter.convert(5)
  end

  def test_converter_converts_six
    assert_equal "VI", converter.convert(6)
  end

  def test_converter_converts_ten
    assert_equal "X", converter.convert(10)
  end

  def test_converter_converts_twenty
    assert_equal "XX", converter.convert(20)
  end

  def test_converter_converts_four
    assert_equal "IV", converter.convert(4)
  end

  def test_converter_converts_nine
    assert_equal "IX", converter.convert(9)
  end

  def test_converter_converts_fifty
    assert_equal "L", converter.convert(50)
  end

  def test_converter_converts_hundred
    assert_equal "C", converter.convert(100)
  end

  def test_converter_converts_fourty
    assert_equal "XL", converter.convert(40)
  end

  def test_converter_converts_ninety
    assert_equal "XC", converter.convert(90)
  end

  def test_converter_converts_two_hundred
    assert_equal "CC", converter.convert(200)
  end

  def test_converter_converts_five_hundred
    assert_equal "D", converter.convert(500)
  end

  def test_converter_converts_thousand
    assert_equal "M", converter.convert(1000)
  end

  def test_converter_converts_four_hundred
    assert_equal "CD", converter.convert(400)
  end

  def test_converter_converts_nine_hundred
    assert_equal "CM", converter.convert(900)
  end

  def test_converter_converts_three_thousand_nine_hundred_ninety_nine
    assert_equal "MMMCMXCIX", converter.convert(3999)
  end

  def test_converter_converts_two_thousand_thirteen
    assert_equal "MMXIII", converter.convert(2013)
  end

  def test_converter_converts_nine_hundred_ninety_nine
    assert_equal "CMXCIX", converter.convert(999)
  end
end