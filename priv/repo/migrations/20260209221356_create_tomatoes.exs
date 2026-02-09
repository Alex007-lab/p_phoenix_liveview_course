defmodule PPhoenixLiveviewCourse.Repo.Migrations.CreateTomatoes do
  use Ecto.Migration

  def change do
    create table(:tomatoes) do
      add :good, :integer
      add :bad, :integer
      add :game_id, references(:games, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create unique_index(:tomatoes, [:game_id])
  end
end
