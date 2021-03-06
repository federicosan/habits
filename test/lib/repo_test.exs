defmodule Habits.RepoTest do
  use Habits.ModelCase

  alias Habits.Repo
  alias Habits.Habit

  test "exists? returns false with no matching record in the DB" do
    assert Repo.exists?(Habit) == false
  end

  test "exists? returns true with a matching record in the DB" do
    Factory.create(:habit)

    assert Repo.exists?(Habit) == true
  end

  test "count returns the number of results" do
    Factory.create_list(2, :habit)

    assert Repo.count(Habit) == 2
  end
end
