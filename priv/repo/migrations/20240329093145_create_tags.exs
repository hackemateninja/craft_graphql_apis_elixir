defmodule PlateSlate.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :description, :string
      add :name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
