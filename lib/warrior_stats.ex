defmodule WarriorStats do
  defstruct name: "Unnamed Warrior", strength: 10, constitution: 10

  def create_warrior(%{name: name}) when is_binary(name) do
    %WarriorStats{name: name}
  end

  def create_warrior(_), do: %WarriorStats{}

  def create_warrior, do: %WarriorStats{name: "Last"}
end
