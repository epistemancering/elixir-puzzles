levelClouds = :all |> IO.read |> String.split("\n") |> Enum.at(1) |> String.split
lastCloud = (levelClouds |> length) - 1

jump = fn(jump, cloud, jumps) ->
  if (levelClouds |> Enum.at(cloud + 2) === "0") do
    jump |> jump.(cloud + 2, jumps + 1)
  else
    if (cloud === lastCloud) do
      jumps
    else
      jump |> jump.(cloud + 1, jumps + 1)
    end
  end
end

jump |> jump.(0, 0) |> IO.inspect


# 7
# 0 1 0 0 0 1 0

# 3


# 7
# 0 0 1 0 0 1 0

# 4


# 6
# 0 0 0 0 1 0

# 3


# 6
# 0 0 0 1 0 0

# 3
