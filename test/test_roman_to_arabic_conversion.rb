module TestRomanToArabicConversion
  def test_converter_converts_numbers_starting_with_i
    assert_same 1, converter.convert("I")
    assert_same 2, converter.convert("II")

    assert_same 4, converter.convert("IV")
    assert_same 9, converter.convert("IX")
  end

  def test_converter_converts_numbers_starting_with_v
    assert_equal 5, converter.convert("V")
    assert_equal 6, converter.convert("VI")
  end

  def test_converter_converts_numbers_starting_with_x
    assert_equal 10, converter.convert("X")
    assert_equal 15, converter.convert("XV")
    assert_equal 16, converter.convert("XVI")
    assert_equal 20, converter.convert("XX")

    assert_equal 14, converter.convert("XIV")
    assert_equal 19, converter.convert("XIX")
    assert_equal 40, converter.convert("XL")
    assert_equal 90, converter.convert("XC")
  end

  def test_converter_converts_numbers_starting_with_l
    assert_equal 50, converter.convert("L")
    assert_equal 60, converter.convert("LX")
  end

  def test_converter_converts_numbers_starting_with_c
    assert_equal 100, converter.convert("C")
    assert_equal 200, converter.convert("CC")
    assert_equal 255, converter.convert("CCLV")
    assert_equal 900, converter.convert("CM")
  end

  def test_converter_converts_numbers_starting_with_d
    assert_equal 500, converter.convert("D")
    assert_equal 600, converter.convert("DC")
  end

  def test_converter_converts_numbers_starting_with_m
    assert_equal 1000, converter.convert("M")
    assert_equal 2000, converter.convert("MM")
    assert_equal 2550, converter.convert("MMDL")
    assert_equal 3999, converter.convert("MMMCMXCIX")
  end

end