defmodule RomanNumeralsElixir do
  def convert(number, letters \\ "") do
    cond do
      number >= 100 -> convert(number-100, letters <> "C")
      number >= 50 -> convert(number-50, letters <> "L")
      number >= 10 -> convert(number-10, letters <> "X")
      number >= 5 -> convert(number-5, letters <> "V")
      number >= 1 -> convert(number-1, letters <> "I")
      true -> letters
    end
    
  end

end
