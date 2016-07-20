defmodule ConsistencyFailure.NoCase do
  def first_after(data, offset) when byte_size(data) > offset do
    << _ :: size(offset)-binary, rest :: binary >> = data

    { first, _rest } = match_first(data, rest)

    first
  end

  def first_after(_, _), do: nil


  def match_first(_, << first :: size(1)-binary, rest :: binary >>) do
    { first, rest }
  end
end
