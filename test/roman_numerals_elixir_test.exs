defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  import Checkov
  doctest RomanNumeralsElixir

  data_test "#{number} converts to #{expected}" do
    assert RomanNumeralsElixir.convert(number) == expected

    where(
      number: [1, 5, 10, 50, 100, 500, 1000],
      expected: ["I", "V", "X", "L", "C", "D", "M"]
    )
  end

  test "II converts to 2" do
    assert RomanNumeralsElixir.convert(2) == "II"
  end

  data_test "9s #{number} convert to #{expected}" do
    assert RomanNumeralsElixir.convert(number) == expected

    where(
      number: [4, 9, 40, 49, 54, 90, 99],
      expected: ["IV", "IX", "XL", "XLIX", "LIV", "XC", "XCIX"]
    )
  end
end
