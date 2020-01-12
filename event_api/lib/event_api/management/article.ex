defmodule EventApi.Management.Article do
  use Ecto.Schema
  import Ecto.Changeset

  schema "articles" do

    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [])
    |> validate_required([])
  end
end
