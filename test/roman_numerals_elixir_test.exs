defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  doctest RomanNumeralsElixir

  test "I converts to 1" do
    assert RomanNumeralsElixir.convert("I") == 1
  end

  test "V converts to 5" do
    assert RomanNumeralsElixir.convert("V") == 5
  end

  test "X converts to 10" do
    assert RomanNumeralsElixir.convert("X") == 10
  end

end
