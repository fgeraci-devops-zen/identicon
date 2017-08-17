defmodule Identicon do
  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
  end

  # Get images and rgb values for colors
  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end



  # Let's build the grid and define which squares has to be colored and which not.
  def build_grid(%Identicon.Image{hex: hex} = image) do
    hex
    |> Enum.chunk(3)
  
    
  end

  def mirror_row(row) do
    # [145, 46, 200] for "adfs"
    [first, second | _tail] = row


    # [145, 46, 200, 46, 145]

    row ++ [second, first]
    
  end


  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
    
  end
end
