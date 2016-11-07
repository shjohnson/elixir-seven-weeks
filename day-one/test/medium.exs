# Given a list of numbers, use recursion to find:
  # (1) the size of the list
  # (2) the maximum value
  # (3) the minimum value

# Given a list of atoms, build a function called word_count that returns a keyword list,
# where the keys are atoms from the list and the values are the number of occurrences of
# that word in the list. For example, word_count([:one, :two, :two]) returns [one: 1, two: 2].

defmodule ListCal do
  def size(list) when is_list(list) do
    size(list, 0)
  end
  def size([], acc), do: acc
  def size([_head|tail], acc) do
    size(tail,acc + 1)
  end

  def len([]), do: 0
  def len([ _head | tail ]), do: 1 + len(tail)
end


# warning: definitions with multiple clauses and default values require a function head. Instead of:

#     def foo(:first_clause, b \\ :default) do ... end
#     def foo(:second_clause, b) do ... end

# one should write:

#     def foo(a, b \\ :default)
#     def foo(:first_clause, b) do ... end
#     def foo(:second_clause, b) do ... end

# def size/2 has multiple clauses and defines defaults in a clause with a body
#   day-one/test/medium.exs:15