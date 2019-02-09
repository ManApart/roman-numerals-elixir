defmodule RomanNumeralsElixir do
  def convert(number, letters \\ "") do

    cond do
      number >= 1000 -> convert(number - 1000, letters <> "M")
      number >= 500 -> convert(number - 500, letters <> "D")
      number >= 100 -> convert(number - 100, letters <> "C")
      number >= 90 -> convert(number - 90, letters <> "XC")
      number >= 50 -> convert(number - 50, letters <> "L")
      number >= 40 -> convert(number - 40, letters <> "XL")
      number >= 10 -> convert(number - 10, letters <> "X")
      number >= 9 -> convert(number - 9, letters <> "IX")
      number >= 5 -> convert(number - 5, letters <> "V")
      number >= 4 -> convert(number - 4, letters <> "IV")
      number >= 1 -> convert(number - 1, letters <> "I")
      true -> letters
    end
  end

end
