defmodule PlateSlate.Menu.ItemTag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "item_tags" do
    belongs_to :item, PlateSlate.Menu.Item
    belongs_to :tag, PlateSlate.Menu.Tag

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(item_tag, attrs) do
    item_tag
    |> cast(attrs, [:item_id, :tag_id])
    |> validate_required([])
  end
end
