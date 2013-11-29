# Roman Arabic Conversion

A small library to convert Arabic numerals to Roman numerals and vice-versa.

## Usage

It is fairly easy to use this library and it has only method you need to remember, `convert`.

```ruby

converter = RomanNumeralConverter.new
converter.convert(5) # => "V"
converter.convert("V") # => 5

```

To convert a Roman Numeral to Arabic, you need to provide it as a String.

**NOTE**: The library only guarantees to work till 3999.