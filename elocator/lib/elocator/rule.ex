defmodule Elocator.Rule do
  use Ecto.Schema

  schema "rule" do
    field :payload
    field :type

    timestamps
  end
end