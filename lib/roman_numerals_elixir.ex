defmodule RomanNumeralsElixir do
  def convert(number) do
    case number do
      1 -> "I"
      5 -> "V"
      10 -> "X"
      50 -> "L"
      100 -> "C"
    end
  end
end
