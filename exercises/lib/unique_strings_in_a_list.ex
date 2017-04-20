defmodule UniqueStringsInAList do
    @doc ~S"""
    Returns list of the unique strings found in a list.

    ## Examples

        iex> UniqueStringsInAList.get_uniques(["foo","bar","foo"])
        ["bar","foo"]

    """
  def get_uniques(strings) do
    uniques = for s <- strings, into: %{}, do: {s, 1}
    Map.keys(uniques)
  end
end
