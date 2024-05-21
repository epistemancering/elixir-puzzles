(:all |> IO.read |> String.split("\n") |> Enum.at(1) |> String.graphemes |> Enum.reduce(
  %{ elevation: 0, valleys: 0 },
  fn(step, progress) ->
    if (step === "U") do
      %{ elevation: progress.elevation + 1, valleys: progress.valleys }
    else
      if (progress.elevation === 0) do
        %{ elevation: progress.elevation - 1, valleys: progress.valleys + 1 }
      else
        %{ elevation: progress.elevation - 1, valleys: progress.valleys }
      end
    end
  end
)).valleys |> IO.inspect


# 8
# DDUUUUDD

# 1


# 8
# UDDDUDUU

# 1


# 12
# DDUUDDUDUUUD

# 2
