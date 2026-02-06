defmodule PPhoenixLiveviewCourse.Repo.Migrations.AddImageToGames do
  use Ecto.Migration

  def change do
    alter table(:games) do
      add :image_upload, :string
    end
  end
end
