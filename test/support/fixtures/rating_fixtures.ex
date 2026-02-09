defmodule PPhoenixLiveviewCourse.RatingFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PPhoenixLiveviewCourse.Rating` context.
  """

  @doc """
  Generate a tomatoes.
  """
  def tomatoes_fixture(attrs \\ %{}) do
    {:ok, tomatoes} =
      attrs
      |> Enum.into(%{
        bad: 42,
        good: 42
      })
      |> PPhoenixLiveviewCourse.Rating.create_tomatoes()

    tomatoes
  end
end
