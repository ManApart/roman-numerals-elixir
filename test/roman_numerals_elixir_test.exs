defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  doctest RomanNumeralsElixir

  test "I converts to 1" do
    assert RomanNumeralsElixir.convert("I") == 1
  end

end
