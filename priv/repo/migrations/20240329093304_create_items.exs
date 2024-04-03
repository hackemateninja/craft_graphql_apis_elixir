defmodule PlateSlate.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :added_on, :date, null: false, default: fragment("NOW()")
      add :description, :string
      add :name, :string, null: false
      add :price, :decimal, null: false
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:items, [:category_id])
  end
end
