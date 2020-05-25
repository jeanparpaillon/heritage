defmodule HeritageTest do
  use ExUnit.Case
  doctest Heritage

  test "greets the world" do
    assert Heritage.hello() == :world
  end
end
