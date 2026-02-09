defmodule PPhoenixLiveviewCourse.RatingTest do
  use PPhoenixLiveviewCourse.DataCase

  alias PPhoenixLiveviewCourse.Rating

  describe "tomatoes" do
    alias PPhoenixLiveviewCourse.Rating.Tomatoes

    import PPhoenixLiveviewCourse.RatingFixtures

    @invalid_attrs %{bad: nil, good: nil}

    test "list_tomatoes/0 returns all tomatoes" do
      tomatoes = tomatoes_fixture()
      assert Rating.list_tomatoes() == [tomatoes]
    end

    test "get_tomatoes!/1 returns the tomatoes with given id" do
      tomatoes = tomatoes_fixture()
      assert Rating.get_tomatoes!(tomatoes.id) == tomatoes
    end

    test "create_tomatoes/1 with valid data creates a tomatoes" do
      valid_attrs = %{bad: 42, good: 42}

      assert {:ok, %Tomatoes{} = tomatoes} = Rating.create_tomatoes(valid_attrs)
      assert tomatoes.bad == 42
      assert tomatoes.good == 42
    end

    test "create_tomatoes/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Rating.create_tomatoes(@invalid_attrs)
    end

    test "update_tomatoes/2 with valid data updates the tomatoes" do
      tomatoes = tomatoes_fixture()
      update_attrs = %{bad: 43, good: 43}

      assert {:ok, %Tomatoes{} = tomatoes} = Rating.update_tomatoes(tomatoes, update_attrs)
      assert tomatoes.bad == 43
      assert tomatoes.good == 43
    end

    test "update_tomatoes/2 with invalid data returns error changeset" do
      tomatoes = tomatoes_fixture()
      assert {:error, %Ecto.Changeset{}} = Rating.update_tomatoes(tomatoes, @invalid_attrs)
      assert tomatoes == Rating.get_tomatoes!(tomatoes.id)
    end

    test "delete_tomatoes/1 deletes the tomatoes" do
      tomatoes = tomatoes_fixture()
      assert {:ok, %Tomatoes{}} = Rating.delete_tomatoes(tomatoes)
      assert_raise Ecto.NoResultsError, fn -> Rating.get_tomatoes!(tomatoes.id) end
    end

    test "change_tomatoes/1 returns a tomatoes changeset" do
      tomatoes = tomatoes_fixture()
      assert %Ecto.Changeset{} = Rating.change_tomatoes(tomatoes)
    end
  end
end
