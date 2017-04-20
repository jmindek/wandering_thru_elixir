defmodule UniqueStringsInAList.Test do
  use ExUnit.Case
  use ExCheck

  doctest UniqueStringsInAList

  test "Returns 2 Unique items in 3 element list with 1 duplicate" do
    assert UniqueStringsInAList.get_uniques(["foo", "bar", "foo"]) == ["bar", "foo"]
  end

  @tag iterations: 10
  property :unique_strings_random_lists do
    for_all xs in list(unicode_string()) do
      ln = length xs
      implies (ln > 1) do
        # due to lack of creative mojo I am duplicating the prod code here to verify the results.
        expected = Map.keys(for s <- xs, into: %{}, do: {s, 1})
        assert expected == UniqueStringsInAList.get_uniques(xs)
      end
    end
  end

end
