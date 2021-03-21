defmodule TalentFestApiTest do
  use ExUnit.Case
  doctest TalentFestApi

  test "greets the world" do
    assert TalentFestApi.hello() == :world
  end
end
