defmodule BaseInformation do

  alias Faker.Person

  defstruct name: "Default", profession: "Warrior", height: 62, weight: 180

  def generate_random_base_information do
    %BaseInformation{
      name: Person.name(),
      profession: "Warrior",
      height: Enum.random(50..120),
      weight: Enum.random(60..250)
    }
  end
end
