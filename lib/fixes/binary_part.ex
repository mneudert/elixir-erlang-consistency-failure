defmodule ConsistencyFailure.BinaryPart do
  def first_after(data, offset) do
    case byte_size(data) > offset do
      false -> nil
      true  ->
        << _ :: size(offset)-binary, rest :: binary >> = data

        { first, _rest }  = match_first(data, rest)

        first
    end
  end

  def match_first(_, data) do
    { :binary.part(data, { 0, 1 }),
      :binary.part(data, { 1, byte_size(data) - 1 }) }
  end
end
