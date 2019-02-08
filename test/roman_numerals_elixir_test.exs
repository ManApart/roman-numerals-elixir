defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  import Checkov
  doctest RomanNumeralsElixir

  data_test "Single letter #{letter} converts to #{expected}" do
    assert RomanNumeralsElixir.convert(letter) == expected
    
    where letter:  ["I", "V", "X", "L", "C"],
          expected: [1,5,10,50,100]
  end

end
