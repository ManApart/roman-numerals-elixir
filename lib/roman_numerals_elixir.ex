defmodule RomanNumeralsElixir do

  def convert(number) do
    case number do
      "I" -> 1
      "V" -> 5
      "X" -> 10
      "L" -> 50
      "C" -> 100
    end
  end
end
