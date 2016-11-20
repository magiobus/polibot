defmodule Polibot.StateTest do
  use Polibot.ModelCase

  alias Polibot.State

  @valid_attrs %{avg_salary: 42, density: 42, human_development: 42, name: "some content", political_tendency: 42, population: 42, religion: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = State.changeset(%State{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = State.changeset(%State{}, @invalid_attrs)
    refute changeset.valid?
  end
end
