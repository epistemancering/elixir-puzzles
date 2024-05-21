repeatedString = :all |> IO.read |> String.split("\n")
stringLetters = repeatedString |> Enum.at(0) |> String.graphemes
cutoffPoint = repeatedString |> Enum.at(1) |> String.to_integer
stringLength = stringLetters |> length
fullRepetitions = cutoffPoint / stringLength |> trunc
partialLength = cutoffPoint - stringLength * fullRepetitions
partialRepetitions = fullRepetitions + 1

0 .. stringLength |> Enum.reduce(
  0,
  fn(index, count) ->
    if (stringLetters |> Enum.at(index) === "a") do
      if (index < partialLength) do
        count + partialRepetitions
      else
        count + fullRepetitions
      end
    else
      count
    end
  end
) |> IO.inspect


# abcac
# 10

# 4


# aba
# 10

# 7


# a
# 1000000000000

# 1000000000000
