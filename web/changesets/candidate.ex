defmodule Polibot.CandidateChangesets do
  use Polibot.Web, :model
  @params [:fb_id, :race, :gender, :was_poor, :budget, :popularity,
           :actual_popularity, :last_name, :first_name, :tendency, :charisma]

  def creation(struct, params \\ %{}) do
    struct
    |> cast(params, @params)
    |> validate_required(params, @params)
  end
end
