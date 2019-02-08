defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  import Checkov
  doctest RomanNumeralsElixir

  data_test "\#{letters} converts to \#{expected}" do
    assert RomanNumeralsElixir.convert(letters) == expected
    
    where letters:  ["I", "V", "X"],
          expected: [1,5,10]

  end

end
