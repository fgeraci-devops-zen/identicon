defmodule Identicon do
  def main(input) do
    input
    |> hash_input
    |> pick_color
  end

  # Get images and rgb values for colors
  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end

  # Let's build the grid and define which squares has to be colored and which not.



  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
    
  end
end
