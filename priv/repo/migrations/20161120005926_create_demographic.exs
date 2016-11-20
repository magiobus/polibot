defmodule Polibot.Repo.Migrations.CreateDemographic do
  use Ecto.Migration

  def change do
    create table(:demographics) do
      add :rich_people, :integer
      add :poor_people, :integer
      add :avg_age, :integer
      add :foreigners, :integer
      add :men, :integer
      add :women, :integer
      add :state_id, references(:states, on_delete: :nothing)

      timestamps()
    end
    create index(:demographics, [:state_id])

  end
end
