defmodule ListFilter do
  @moduledoc """
  Handle odd numbers from a list of strings.
  """

  @doc """
  Count the odd numbers from a list.

  ## Examples

      iex> ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      3

  """
  @spec call(list) :: non_neg_integer
  def call(list) do
    list
    |> Enum.filter(&number?(&1))
    |> Enum.map(&to_integer(&1))
    |> Enum.filter(&odd?(&1))
    |> length()
  end

  defp number?(str) do
    String.match?(str, ~r(\A\d+$))
  end

  defp to_integer(str) do
    String.to_integer(str)
  end

  defp odd?(number) do
    rem(number, 2) != 0
  end
end
