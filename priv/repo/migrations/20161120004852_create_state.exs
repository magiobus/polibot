defmodule Polibot.Repo.Migrations.CreateState do
  use Ecto.Migration

  def change do
    create table(:states) do
      add :name, :string
      add :avg_salary, :integer
      add :human_development, :integer
      add :religion, :string
      add :political_tendency, :integer
      add :population, :integer
      add :density, :integer
      add :country_id, references(:countries, on_delete: :nothing)

      timestamps()
    end
    create index(:states, [:country_id])

  end
end
