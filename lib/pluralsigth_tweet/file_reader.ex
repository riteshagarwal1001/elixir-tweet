# iex -S mix

defmodule PluralsigthTweet.FileReader do
  def read_string(path) do
    File.read!(path)
  end
end
