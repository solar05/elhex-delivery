defmodule ElhexDelivery.PostalCode.CacheTest do
  use ExUnit.Case
  alias ElhexDelivery.PostalCode.Cache
  doctest ElhexDelivery

  test "get_and_set_distance" do
    p1 = "12345"
    p2 = "98765"
    distance = 99.98

    Cache.set_distance(p1, p2, distance)

    retrived_distance = Cache.get_distance(p1, p2)

    assert distance == retrived_distance
  end
end
