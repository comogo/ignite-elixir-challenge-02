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
    |> Enum.filter(&odd_number?(&1))
    |> length()
  end

  defp odd_number?(str) do
    case Integer.parse(str) do
      {number, ""} ->
        odd?(number)

      _ ->
        false
    end
  end

  defp odd?(number) do
    rem(number, 2) != 0
  end
end
