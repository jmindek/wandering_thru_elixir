defmodule SumMax2.Test do
  use ExUnit.Case
  doctest SumMax2
  test "Sum of max2 of two element list is correct." do
    assert SumMax2.sum_max_2([1,2]) == 3
  end

  test "Sum of max2 of three element list is correct." do
    assert SumMax2.sum_max_2([3,-2,2]) == 5
  end

  test "Sum of max2 of four element list is correct." do
    assert SumMax2.sum_max_2([3,-2,2,4]) == 7
  end

  test "Sum of max2 of five element list is correct." do
    assert SumMax2.sum_max_2([3,-2,2,4,-3]) == 7
  end

end
