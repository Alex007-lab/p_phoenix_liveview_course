defmodule PPhoenixLiveviewCourse.Rating do
  @moduledoc """
  The Rating context.
  """

  import Ecto.Query, warn: false
  alias PPhoenixLiveviewCourse.Repo

  alias PPhoenixLiveviewCourse.Rating.Tomatoes

  @doc """
  Returns the list of tomatoes.

  ## Examples

      iex> list_tomatoes()
      [%Tomatoes{}, ...]

  """
  def list_tomatoes do
    Repo.all(Tomatoes)
  end

  @doc """
  Gets a single tomatoes.

  Raises `Ecto.NoResultsError` if the Tomatoes does not exist.

  ## Examples

      iex> get_tomatoes!(123)
      %Tomatoes{}

      iex> get_tomatoes!(456)
      ** (Ecto.NoResultsError)

  """
  def get_tomatoes!(id), do: Repo.get!(Tomatoes, id)

  @doc """
  Creates a tomatoes.

  ## Examples

      iex> create_tomatoes(%{field: value})
      {:ok, %Tomatoes{}}

      iex> create_tomatoes(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_tomatoes(attrs \\ %{}) do
    %Tomatoes{}
    |> Tomatoes.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a tomatoes.

  ## Examples

      iex> update_tomatoes(tomatoes, %{field: new_value})
      {:ok, %Tomatoes{}}

      iex> update_tomatoes(tomatoes, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_tomatoes(%Tomatoes{} = tomatoes, attrs) do
    tomatoes
    |> Tomatoes.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a tomatoes.

  ## Examples

      iex> delete_tomatoes(tomatoes)
      {:ok, %Tomatoes{}}

      iex> delete_tomatoes(tomatoes)
      {:error, %Ecto.Changeset{}}

  """
  def delete_tomatoes(%Tomatoes{} = tomatoes) do
    Repo.delete(tomatoes)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking tomatoes changes.

  ## Examples

      iex> change_tomatoes(tomatoes)
      %Ecto.Changeset{data: %Tomatoes{}}

  """
  def change_tomatoes(%Tomatoes{} = tomatoes, attrs \\ %{}) do
    Tomatoes.changeset(tomatoes, attrs)
  end
end
