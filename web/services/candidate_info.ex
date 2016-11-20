defmodule Polibot.CandidateInfoServices do
  @races ["Latino", "White", "Asian", "Black"]
  @genders ["Female", "Male"]
  @tendencies ["Liberalism", "Conservatism"]
  @last_names ["Zhou", "Lee", "Deschamps", "Lewis", "Ochoa", "Riviera", "Miller"]
  @female_first_names ["Laura", "Janina", "Bonita", "María", "Katherine", "Yoon", "Cindy", "Qiu"]
  @male_first_names ["John", "George", "Raul", "Pedro", "Goro", "Ichirou", "Ade", "Fatou"]

  def assign_random(:race) do
    [race] = Enum.take_random(@races, 1)
    race
  end

  def assign_random(:gender) do
    [gender] = Enum.take_random(@genders, 1)
    gender
  end

  def assign_random(:tendency) do
    [tendency] = Enum.take_random(@tendencies, 1)
    tendency
  end

  def assign_random(:last_name) do
    [last_name] = Enum.take_random(@last_names, 1)
    last_name
  end

  def assign_random(:first_name, %{gender: "Female"}) do
    [first_name] = Enum.take_random(@female_first_names, 1)
    first_name
  end

  def assign_random(:first_name, %{gender: "Male"}) do
    [first_name] = Enum.take_random(@male_first_names, 1)
    first_name
  end

end
