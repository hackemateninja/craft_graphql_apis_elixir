defmodule PlateSlate.Menu.Tag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tags" do
    field :name, :string
    field :description, :string
    many_to_many :items, PlateSlate.Menu.Item, join_through: PlateSlate.Menu.ItemTag

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(tag, attrs) do
    tag
    |> cast(attrs, [:description, :name])
    |> validate_required([:description, :name])
  end
end
