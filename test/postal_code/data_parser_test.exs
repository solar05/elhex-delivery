defmodule ElhexDelivery.PostalCode.DataParserTest do
  use ExUnit.Case
  alias ElhexDelivery.PostalCode.DataParser
  doctest ElhexDelivery

  test "parse_data" do
    geolocation_data = DataParser.parse_data()
    {lattitude, longitude} = Map.get(geolocation_data, "94062")
    assert is_float(lattitude)
    assert is_float(longitude)
  end
end
