defmodule ConsistencyFailure.UsageTest do
  use ExUnit.Case

  alias ConsistencyFailure.Usage

  test "works" do
    assert << 4 >> == Usage.first_after(<< 1, 2, 3, 4, 5 >>, 3)
  end
end
