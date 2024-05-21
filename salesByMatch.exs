:all |> IO.read |> String.split("\n") |> Enum.at(1) |> String.split |> Enum.reduce(
  %{},
  fn(color, map) ->
    if map[color] do
      map |> Map.put(color, map[color] + 0.5)
    else
      map |> Map.put(color, 0.5)
    end
  end
) |> Enum.reduce(
  0,
  fn(count, total) ->
    (count |> elem(1) |> trunc) + total
  end
) |> IO.inspect


# 7
# 1 2 1 2 1 3 2

# 2


# 9
# 10 20 20 10 10 30 50 10 20

# 3


# 10
# 1 1 3 1 2 1 3 3 3 3

# 4
