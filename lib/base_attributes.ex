defmodule BaseAttributes do
  defstruct strength: 0, constitution: 0, agility: 0, intelligence: 0, wisdom: 0, discipline: 0

  def generate_random_base_attributes do
    %BaseAttributes{
      strength: Enum.random(30..100),
      constitution: Enum.random(30..100),
      agility: Enum.random(30..100),
      intelligence: Enum.random(30..100),
      wisdom: Enum.random(30..100),
      discipline: Enum.random(30..100)
    }
  end
end
