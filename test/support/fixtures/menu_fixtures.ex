defmodule PlateSlate.MenuFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PlateSlate.Menu` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        added_on: ~D[2024-03-28],
        description: "some description",
        name: "some name",
        price: "120.5"
      })
      |> PlateSlate.Menu.create_item()

    item
  end

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> PlateSlate.Menu.create_category()

    category
  end

  @doc """
  Generate a tag.
  """
  def tag_fixture(attrs \\ %{}) do
    {:ok, tag} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> PlateSlate.Menu.create_tag()

    tag
  end

  @doc """
  Generate a item_tag.
  """
  def item_tag_fixture(attrs \\ %{}) do
    {:ok, item_tag} =
      attrs
      |> Enum.into(%{})
      |> PlateSlate.Menu.create_item_tag()

    item_tag
  end
end
