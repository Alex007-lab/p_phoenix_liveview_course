defmodule PPhoenixLiveviewCourse.Rating.Tomatoes do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tomatoes" do
    field :bad, :integer
    field :good, :integer
    field :game_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(tomatoes, attrs) do
    tomatoes
    |> cast(attrs, [:good, :bad])
    |> validate_required([:good, :bad])
    |> unique_constraint(:game_id)
  end
end
