defmodule RomanNumeralsElixir do

  def convert(number) do
    case number do
      "I" -> 1
      "V" -> 5
      "X" -> 10
    end
  end
end
