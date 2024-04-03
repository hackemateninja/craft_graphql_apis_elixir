defmodule PlateSlate.MenuTest do
  use PlateSlate.DataCase

  alias PlateSlate.Menu

  describe "items" do
    alias PlateSlate.Menu.Item

    import PlateSlate.MenuFixtures

    @invalid_attrs %{name: nil, description: nil, added_on: nil, price: nil}

    test "list_items/0 returns all items" do
      item = item_fixture()
      assert Menu.list_items() == [item]
    end

    test "get_item!/1 returns the item with given id" do
      item = item_fixture()
      assert Menu.get_item!(item.id) == item
    end

    test "create_item/1 with valid data creates a item" do
      valid_attrs = %{name: "some name", description: "some description", added_on: ~D[2024-03-28], price: "120.5"}

      assert {:ok, %Item{} = item} = Menu.create_item(valid_attrs)
      assert item.name == "some name"
      assert item.description == "some description"
      assert item.added_on == ~D[2024-03-28]
      assert item.price == Decimal.new("120.5")
    end

    test "create_item/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Menu.create_item(@invalid_attrs)
    end

    test "update_item/2 with valid data updates the item" do
      item = item_fixture()
      update_attrs = %{name: "some updated name", description: "some updated description", added_on: ~D[2024-03-29], price: "456.7"}

      assert {:ok, %Item{} = item} = Menu.update_item(item, update_attrs)
      assert item.name == "some updated name"
      assert item.description == "some updated description"
      assert item.added_on == ~D[2024-03-29]
      assert item.price == Decimal.new("456.7")
    end

    test "update_item/2 with invalid data returns error changeset" do
      item = item_fixture()
      assert {:error, %Ecto.Changeset{}} = Menu.update_item(item, @invalid_attrs)
      assert item == Menu.get_item!(item.id)
    end

    test "delete_item/1 deletes the item" do
      item = item_fixture()
      assert {:ok, %Item{}} = Menu.delete_item(item)
      assert_raise Ecto.NoResultsError, fn -> Menu.get_item!(item.id) end
    end

    test "change_item/1 returns a item changeset" do
      item = item_fixture()
      assert %Ecto.Changeset{} = Menu.change_item(item)
    end
  end

  describe "categories" do
    alias PlateSlate.Menu.Category

    import PlateSlate.MenuFixtures

    @invalid_attrs %{name: nil, description: nil}

    test "list_categories/0 returns all categories" do
      category = category_fixture()
      assert Menu.list_categories() == [category]
    end

    test "get_category!/1 returns the category with given id" do
      category = category_fixture()
      assert Menu.get_category!(category.id) == category
    end

    test "create_category/1 with valid data creates a category" do
      valid_attrs = %{name: "some name", description: "some description"}

      assert {:ok, %Category{} = category} = Menu.create_category(valid_attrs)
      assert category.name == "some name"
      assert category.description == "some description"
    end

    test "create_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Menu.create_category(@invalid_attrs)
    end

    test "update_category/2 with valid data updates the category" do
      category = category_fixture()
      update_attrs = %{name: "some updated name", description: "some updated description"}

      assert {:ok, %Category{} = category} = Menu.update_category(category, update_attrs)
      assert category.name == "some updated name"
      assert category.description == "some updated description"
    end

    test "update_category/2 with invalid data returns error changeset" do
      category = category_fixture()
      assert {:error, %Ecto.Changeset{}} = Menu.update_category(category, @invalid_attrs)
      assert category == Menu.get_category!(category.id)
    end

    test "delete_category/1 deletes the category" do
      category = category_fixture()
      assert {:ok, %Category{}} = Menu.delete_category(category)
      assert_raise Ecto.NoResultsError, fn -> Menu.get_category!(category.id) end
    end

    test "change_category/1 returns a category changeset" do
      category = category_fixture()
      assert %Ecto.Changeset{} = Menu.change_category(category)
    end
  end

  describe "item_tags" do
    alias PlateSlate.Menu.Itemtag

    import PlateSlate.MenuFixtures

    @invalid_attrs %{name: nil, description: nil}

    test "list_item_tags/0 returns all item_tags" do
      itemtag = itemtag_fixture()
      assert Menu.list_item_tags() == [itemtag]
    end

    test "get_itemtag!/1 returns the itemtag with given id" do
      itemtag = itemtag_fixture()
      assert Menu.get_itemtag!(itemtag.id) == itemtag
    end

    test "create_itemtag/1 with valid data creates a itemtag" do
      valid_attrs = %{name: "some name", description: "some description"}

      assert {:ok, %Itemtag{} = itemtag} = Menu.create_itemtag(valid_attrs)
      assert itemtag.name == "some name"
      assert itemtag.description == "some description"
    end

    test "create_itemtag/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Menu.create_itemtag(@invalid_attrs)
    end

    test "update_itemtag/2 with valid data updates the itemtag" do
      itemtag = itemtag_fixture()
      update_attrs = %{name: "some updated name", description: "some updated description"}

      assert {:ok, %Itemtag{} = itemtag} = Menu.update_itemtag(itemtag, update_attrs)
      assert itemtag.name == "some updated name"
      assert itemtag.description == "some updated description"
    end

    test "update_itemtag/2 with invalid data returns error changeset" do
      itemtag = itemtag_fixture()
      assert {:error, %Ecto.Changeset{}} = Menu.update_itemtag(itemtag, @invalid_attrs)
      assert itemtag == Menu.get_itemtag!(itemtag.id)
    end

    test "delete_itemtag/1 deletes the itemtag" do
      itemtag = itemtag_fixture()
      assert {:ok, %Itemtag{}} = Menu.delete_itemtag(itemtag)
      assert_raise Ecto.NoResultsError, fn -> Menu.get_itemtag!(itemtag.id) end
    end

    test "change_itemtag/1 returns a itemtag changeset" do
      itemtag = itemtag_fixture()
      assert %Ecto.Changeset{} = Menu.change_itemtag(itemtag)
    end
  end

  describe "tags" do
    alias PlateSlate.Menu.Tag

    import PlateSlate.MenuFixtures

    @invalid_attrs %{name: nil, description: nil}

    test "list_tags/0 returns all tags" do
      tag = tag_fixture()
      assert Menu.list_tags() == [tag]
    end

    test "get_tag!/1 returns the tag with given id" do
      tag = tag_fixture()
      assert Menu.get_tag!(tag.id) == tag
    end

    test "create_tag/1 with valid data creates a tag" do
      valid_attrs = %{name: "some name", description: "some description"}

      assert {:ok, %Tag{} = tag} = Menu.create_tag(valid_attrs)
      assert tag.name == "some name"
      assert tag.description == "some description"
    end

    test "create_tag/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Menu.create_tag(@invalid_attrs)
    end

    test "update_tag/2 with valid data updates the tag" do
      tag = tag_fixture()
      update_attrs = %{name: "some updated name", description: "some updated description"}

      assert {:ok, %Tag{} = tag} = Menu.update_tag(tag, update_attrs)
      assert tag.name == "some updated name"
      assert tag.description == "some updated description"
    end

    test "update_tag/2 with invalid data returns error changeset" do
      tag = tag_fixture()
      assert {:error, %Ecto.Changeset{}} = Menu.update_tag(tag, @invalid_attrs)
      assert tag == Menu.get_tag!(tag.id)
    end

    test "delete_tag/1 deletes the tag" do
      tag = tag_fixture()
      assert {:ok, %Tag{}} = Menu.delete_tag(tag)
      assert_raise Ecto.NoResultsError, fn -> Menu.get_tag!(tag.id) end
    end

    test "change_tag/1 returns a tag changeset" do
      tag = tag_fixture()
      assert %Ecto.Changeset{} = Menu.change_tag(tag)
    end
  end

  describe "item_tags" do
    alias PlateSlate.Menu.ItemTag

    import PlateSlate.MenuFixtures

    @invalid_attrs %{}

    test "list_item_tags/0 returns all item_tags" do
      item_tag = item_tag_fixture()
      assert Menu.list_item_tags() == [item_tag]
    end

    test "get_item_tag!/1 returns the item_tag with given id" do
      item_tag = item_tag_fixture()
      assert Menu.get_item_tag!(item_tag.id) == item_tag
    end

    test "create_item_tag/1 with valid data creates a item_tag" do
      valid_attrs = %{}

      assert {:ok, %ItemTag{} = item_tag} = Menu.create_item_tag(valid_attrs)
    end

    test "create_item_tag/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Menu.create_item_tag(@invalid_attrs)
    end

    test "update_item_tag/2 with valid data updates the item_tag" do
      item_tag = item_tag_fixture()
      update_attrs = %{}

      assert {:ok, %ItemTag{} = item_tag} = Menu.update_item_tag(item_tag, update_attrs)
    end

    test "update_item_tag/2 with invalid data returns error changeset" do
      item_tag = item_tag_fixture()
      assert {:error, %Ecto.Changeset{}} = Menu.update_item_tag(item_tag, @invalid_attrs)
      assert item_tag == Menu.get_item_tag!(item_tag.id)
    end

    test "delete_item_tag/1 deletes the item_tag" do
      item_tag = item_tag_fixture()
      assert {:ok, %ItemTag{}} = Menu.delete_item_tag(item_tag)
      assert_raise Ecto.NoResultsError, fn -> Menu.get_item_tag!(item_tag.id) end
    end

    test "change_item_tag/1 returns a item_tag changeset" do
      item_tag = item_tag_fixture()
      assert %Ecto.Changeset{} = Menu.change_item_tag(item_tag)
    end
  end
end
