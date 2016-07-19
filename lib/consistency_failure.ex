defmodule ConsistencyFailure do
  def first_after(data, offset) do
    case byte_size(data) > offset do
      false -> nil
      true  ->
        << _ :: size(offset)-binary, rest :: binary >> = data

        { first, _rest }  = match_first(data, rest)

        first
    end
  end

  def match_first(_, << first :: size(1)-binary, rest :: binary >>) do
    { first, rest }
  end
end
