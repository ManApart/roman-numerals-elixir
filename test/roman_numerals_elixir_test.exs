defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  import Checkov
  doctest RomanNumeralsElixir

  data_test "#{number} converts to #{expected}" do
    assert RomanNumeralsElixir.convert(number) == expected

    where(
      number: [1, 5, 10, 50, 100],
      expected: ["I", "V", "X", "L", "C"]
    )
  end


end
