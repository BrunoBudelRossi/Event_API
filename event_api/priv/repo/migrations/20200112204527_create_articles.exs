defmodule EventApi.Repo.Migrations.CreateArticles do
  use Ecto.Migration

  def change do
    create table(:articles) do

      add :event_id,  references(:events)
      add :name, :string
      add :content, :text

      timestamps()
    end

  end
end
