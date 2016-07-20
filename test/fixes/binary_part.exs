defmodule ConsistencyFailure.BinaryPartTest do
  use ExUnit.Case

  alias ConsistencyFailure.BinaryPart

  test "works" do
    assert << 4 >> == BinaryPart.first_after(<< 1, 2, 3, 4, 5 >>, 3)
  end
end
