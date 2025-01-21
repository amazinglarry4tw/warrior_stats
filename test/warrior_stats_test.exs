defmodule WarriorStatsTest do
  use ExUnit.Case
  doctest WarriorStats

  test "create warrior with name" do
    assert %WarriorStats{name: "First"} = WarriorStats.create_warrior(%{name: "First"})
  end

  test "create warrior with any single parameter" do
    assert %WarriorStats{name: "Unnamed Warrior", strength: 10} = WarriorStats.create_warrior(%{strength: 10})
  end

  test "create warrior without parameter" do
    assert %WarriorStats{name: "Last", strength: 10, constitution: 10} = WarriorStats.create_warrior
  end

end
