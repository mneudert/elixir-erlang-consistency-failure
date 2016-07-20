defmodule ConsistencyFailure.NoCaseTest do
  use ExUnit.Case

  alias ConsistencyFailure.NoCase

  test "works" do
    assert << 4 >> == NoCase.first_after(<< 1, 2, 3, 4, 5 >>, 3)
  end
end
