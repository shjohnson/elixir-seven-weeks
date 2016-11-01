defmodule ListExample do
  def print([]), do: :ok
  def print([head|tail]) do
    IO.puts head
    print tail
  end
end

ListExample.print([:storm, :sabretooth, :mystique])

list = [:wolverine, :magneto, :cyclops]
Enum.each list, &(IO.puts &1)

defmodule ListPrinter do
  def print(x), do: Enum.each( x, &( IO.puts &1 ) )
end