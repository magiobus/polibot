defmodule Polibot.Demographic do
  use Polibot.Web, :model

  schema "demographics" do
    field :rich_people, :integer
    field :poor_people, :integer
    field :avg_age, :integer
    field :foreigners, :integer
    field :men, :integer
    field :women, :integer
    belongs_to :state, Polibot.State

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:rich_people, :poor_people, :avg_age, :foreigners, :men, :women])
    |> validate_required([:rich_people, :poor_people, :avg_age, :foreigners, :men, :women])
  end
end
