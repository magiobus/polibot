defmodule Polibot.CandidateServices do
  alias Polibot.InfoDictionaries

  def create(fb_id) do
    changeset = CandidateChangesets.creation(fb_id)
  end

  def generate_info(fb_id) do
    import Polibot.CandidateInfoServices

    info = %{fb_id: fb_id}
         |> Map.put(:race, assign_random(:race))
         |> Map.put(:gender, assign_random(:gender))
         |> Map.put(:was_poor, generate_boolean_state)
         |> Map.put(:budget, generate_random_number(5))
         |> Map.put(:popularity, generate_random_percentage(40, 100))
         |> Map.put(:actual_popularity, generate_random_percentage(25, 100))
        #|> Map.put(:first_name, assign_random(:first_name))
         |> Map.put(:last_name, assign_random(:last_name))
         |> Map.put(:tendency, assign_random(:tendency))
         |> Map.put(:charisma, generate_random_percentage(30, 100))

    info = Map.put(info, :first_name, assign_random(:first_name, info))
  end
end
