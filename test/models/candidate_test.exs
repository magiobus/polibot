defmodule Polibot.CandidateTest do
  use Polibot.ModelCase

  alias Polibot.Candidate

  @valid_attrs %{actual_popularity: 42, budget: 42, charisma: 42, fb_id: "some content", first_name: "some content", gender: "some content", last_name: "some content", party: "some content", popularity: 42, race: "some content", tendency: "some content", was_poor: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Candidate.changeset(%Candidate{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Candidate.changeset(%Candidate{}, @invalid_attrs)
    refute changeset.valid?
  end
end
