defmodule Polibot.Repo.Migrations.CreateCandidate do
  use Ecto.Migration

  def change do
    create table(:candidates) do
      add :fb_id, :string
      add :race, :string
      add :gender, :string
      add :was_poor, :boolean, default: false, null: false
      add :party, :string
      add :budget, :integer
      add :popularity, :integer
      add :actual_popularity, :integer
      add :first_name, :string
      add :last_name, :string
      add :tendency, :string
      add :charisma, :integer

      timestamps()
    end

  end
end
