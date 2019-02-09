defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  import Checkov
  doctest RomanNumeralsElixir

  data_test "#{number} converts to #{expected}" do
    assert RomanNumeralsElixir.convert(number) == expected

    where([
      [:number, :expected],
      [1, "I"],
      [5, "V"],
      [10, "X"],
      [50, "L"],
      [100, "C"],
      [500, "D"],
      [1000, "M"]
    ])
  end

  test "II converts to 2" do
    assert RomanNumeralsElixir.convert(2) == "II"
  end

  data_test "9s #{number} convert to #{expected}" do
    assert RomanNumeralsElixir.convert(number) == expected

    where([
      [:number, :expected],
      [4, "IV"],
      [9, "IX"],
      [40, "XL"],
      [49, "XLIX"],
      [54, "LIV"],
      [90, "XC"],
      [99, "XCIX"]
    ])
  end
end
