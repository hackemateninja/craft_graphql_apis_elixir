defmodule PlateSlate.Helpers.Seeds do
  def run do
    vegetarian =
      %PlateSlate.Menu.Tag{name: "Vegetarian"}
      |> PlateSlate.Repo.insert!()

    _vegan =
      %PlateSlate.Menu.Tag{name: "Vegan"}
      |> PlateSlate.Repo.insert!()

    _gluten_free =
      %PlateSlate.Menu.Tag{name: "Gluten Free"}
      |> PlateSlate.Repo.insert!()

    #
    # SANDWICHES
    #

    sandwiches = %PlateSlate.Menu.Category{name: "Sandwiches"} |> PlateSlate.Repo.insert!()

    _rueben =
      %PlateSlate.Menu.Item{name: "Reuben", price: 4.50, category: sandwiches}
      |> PlateSlate.Repo.insert!()

    _croque =
      %PlateSlate.Menu.Item{name: "Croque Monsieur", price: 5.50, category: sandwiches}
      |> PlateSlate.Repo.insert!()

    _muffuletta =
      %PlateSlate.Menu.Item{name: "Muffuletta", price: 5.50, category: sandwiches}
      |> PlateSlate.Repo.insert!()

    _bahn_mi =
      %PlateSlate.Menu.Item{name: "Bánh mì", price: 4.50, category: sandwiches}
      |> PlateSlate.Repo.insert!()

    _vada_pav =
      %PlateSlate.Menu.Item{
        name: "Vada Pav",
        price: 4.50,
        category: sandwiches,
        tags: [vegetarian]
      }
      |> PlateSlate.Repo.insert!()

    #
    # SIDES
    #

    sides = %PlateSlate.Menu.Category{name: "Sides"} |> PlateSlate.Repo.insert!()

    _fries =
      %PlateSlate.Menu.Item{name: "French Fries", price: 2.50, category: sides}
      |> PlateSlate.Repo.insert!()

    _papadum =
      %PlateSlate.Menu.Item{name: "Papadum", price: 1.25, category: sides}
      |> PlateSlate.Repo.insert!()

    _pasta_salad =
      %PlateSlate.Menu.Item{name: "Pasta Salad", price: 2.50, category: sides}
      |> PlateSlate.Repo.insert!()

    #
    # BEVERAGES
    #

    beverages = %PlateSlate.Menu.Category{name: "Beverages"} |> PlateSlate.Repo.insert!()

    _water =
      %PlateSlate.Menu.Item{name: "Water", price: 0, category: beverages}
      |> PlateSlate.Repo.insert!()

    _soda =
      %PlateSlate.Menu.Item{name: "Soft Drink", price: 1.5, category: beverages}
      |> PlateSlate.Repo.insert!()

    _lemonade =
      %PlateSlate.Menu.Item{name: "Lemonade", price: 1.25, category: beverages}
      |> PlateSlate.Repo.insert!()

    _chai =
      %PlateSlate.Menu.Item{name: "Masala Chai", price: 1.5, category: beverages}
      |> PlateSlate.Repo.insert!()

    _vanilla_milkshake =
      %PlateSlate.Menu.Item{name: "Vanilla Milkshake", price: 3.0, category: beverages}
      |> PlateSlate.Repo.insert!()

    _chocolate_milkshake =
      %PlateSlate.Menu.Item{name: "Chocolate Milkshake", price: 3.0, category: beverages}
      |> PlateSlate.Repo.insert!()
  end
end
