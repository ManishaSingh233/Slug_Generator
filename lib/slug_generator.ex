defmodule SlugGenerator do
  @moduledoc """
  Documentation for `SlugGenerator`.
  """

  def create(string) do
    string
    |> String.downcase()
    |> String.replace(~r/[^a-zA-Z0-9 &]/, "")
    |> String.replace("&", "and")
    |> String.split()
    |> Enum.join("-")
  end
end
