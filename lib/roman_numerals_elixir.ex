defmodule RomanNumeralsElixir do
  @numerals [
    {1000, "M"},
    {500, "D"},
    {100, "C"},
    {50, "L"},
    {10, "X"},
    {5, "V"},
    {1, "I"}
  ]
  def convert(number, letters \\ "") do
    {number, numerals} = Enum.reduce(@numerals, {number, ""}, &reduce_thing/2)
    replace_nines(numerals)
  end

  defp reduce_thing({numeralValue, numeralSign}, {number, letters}) do
    IO.inspect("numeral: #{numeralValue}, number: #{number}")
    cond do
      number >= numeralValue -> {rem(number, numeralValue), letters <> String.duplicate(numeralSign, div(number, numeralValue))}
      true -> {number, letters}
    end
  end

  defp replace_nines(numerals) do
    numerals
    |> String.replace("IIII", "IV")
    |> String.replace("XXXX", "XL")
  end

end
