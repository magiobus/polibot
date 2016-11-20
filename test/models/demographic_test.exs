defmodule Polibot.DemographicTest do
  use Polibot.ModelCase

  alias Polibot.Demographic

  @valid_attrs %{avg_age: 42, foreigners: 42, men: 42, poor_people: 42, rich_people: 42, women: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Demographic.changeset(%Demographic{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Demographic.changeset(%Demographic{}, @invalid_attrs)
    refute changeset.valid?
  end
end
