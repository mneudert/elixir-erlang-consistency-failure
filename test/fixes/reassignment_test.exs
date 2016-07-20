defmodule ConsistencyFailure.ReassignmentTest do
  use ExUnit.Case

  alias ConsistencyFailure.Reassignment

  test "works" do
    assert << 4 >> == Reassignment.first_after(<< 1, 2, 3, 4, 5 >>, 3)
  end
end
