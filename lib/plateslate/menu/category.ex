defmodule PlateSlate.Menu.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field :name, :string
    field :description, :string
    has_many :items, PlateSlate.Menu.Item

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:description, :name])
    |> validate_required([:description, :name])
  end
end
