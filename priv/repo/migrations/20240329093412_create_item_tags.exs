defmodule PlateSlate.Repo.Migrations.CreateItemTags do
  use Ecto.Migration

  def change do
    create table(:item_tags) do
      add :item_id, references(:items, on_delete: :nothing)
      add :tag_id, references(:tags, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:item_tags, [:item_id])
    create index(:item_tags, [:tag_id])
  end
end
