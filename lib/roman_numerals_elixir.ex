defmodule RomanNumeralsElixir do
  @numerals [
    {1000, "M"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]
  def convert(number, letters \\ "") do
    {number, numerals} = Enum.reduce(@numerals, {number, ""}, &reduce_thing/2)
    numerals
  end

  defp reduce_thing(_, {0, letters}), do: {0, letters}

  defp reduce_thing({numeralValue, numeralSign}, {number, letters}) do
    valueOfSymbol = div(number, numeralValue)
    remainingValue = rem(number, numeralValue)
    {remainingValue, letters <> String.duplicate(numeralSign, valueOfSymbol)}
  end
end
