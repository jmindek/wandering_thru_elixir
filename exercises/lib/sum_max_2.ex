defmodule SumMax2 do
  @doc """
  Computes the sum of the max two elements in a list of numbers.
  """
  def sum_max_2(number_list) do
    acc = Enum.slice(number_list, 0..1)
    numbers = Enum.drop(number_list, 2)
    Enum.reduce(
      Enum.reduce(numbers, acc, fn(x, acc) ->
        cond do
          x <= Enum.fetch!(acc,0) && x <= Enum.fetch!(acc,1) -> acc
          x > Enum.fetch!(acc,0) -> [x, Enum.fetch!(acc,0)]
          x > Enum.fetch!(acc,1) -> [Enum.fetch!(acc,0), x]
        end
      end), fn(x, acc) -> x + acc end
    )
  end
end
