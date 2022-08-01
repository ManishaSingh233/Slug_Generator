defmodule SlugGeneratorTest do
  use ExUnit.Case
  doctest SlugGenerator

  test "generates slug" do
    s = "[\"Pattern\", \"Matching\", \"In\", \"Elixir\"] = [a, b, c, d]"

    assert "pattern-matching-in-elixir-a-b-c-d" = SlugGenerator.create(s)
  end

  test "generates simple slug" do
    s = "My slug generator & simple test "

    assert "my-slug-generator-and-simple-test" = SlugGenerator.create(s)
  end
  test "testing again so..." do
    s = "Testing my @url again   &.. .wait and watch"

    assert "testing-my-url-again-and-wait-and-watch" = SlugGenerator.create(s)
  end
end
