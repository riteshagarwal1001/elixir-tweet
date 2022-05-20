# iex -S mix

defmodule PluralsigthTweet.FileReader do
  def read_string(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    # it checks if tweet length must be below 140 chars
    |> Enum.filter(&(String.length(&1) <= 140))

    # it checks if tweet length must be below 140 chars, same as above function
    # |> Enum.filter(fn str -> String.length(str) <= 140 end)
  end

  def test() do
    add_one = &(&1 + 1)
    add_one.(1)
  end
end
