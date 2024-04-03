defmodule PlateSlate.Menu.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :name, :string
    field :description, :string
    field :added_on, :date
    field :price, :decimal
    belongs_to :category, PlateSlate.Menu.Category
    many_to_many :tags, PlateSlate.Menu.Tag, join_through: PlateSlate.Menu.ItemTag

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:added_on, :description, :name, :price])
    |> validate_required([:added_on, :description, :name, :price])
  end
end
