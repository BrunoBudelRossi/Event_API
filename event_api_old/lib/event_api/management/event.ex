defmodule EventApi.Management.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :day, :date
    field :description, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:title, :description, :day])
    |> validate_required([:title, :description, :day])
  end
end
