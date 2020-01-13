defmodule EventApi.Management.Article do
  use Ecto.Schema
  import Ecto.Changeset

  schema "articles" do
    field :name, :string
    field :content, :string

    belongs_to :event, EventApi.Management.Event
    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:name, :content, :event_id])
    |> validate_required([:name])
  end
end
