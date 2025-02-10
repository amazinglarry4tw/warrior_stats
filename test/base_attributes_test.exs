defmodule BaseAttributesTest do
  use ExUnit.Case
  alias WarriorStats.BaseAttributesFixtures

  test "generate_random_base_attributes/0 returns a BaseAttributes struct with values between 30 and 100 on all attributes" do
    random_attributes = BaseAttributes.generate_random_base_attributes()

    assert random_attributes.strength in 30..100
    assert random_attributes.constitution in 30..100
    assert random_attributes.agility in 30..100
    assert random_attributes.intelligence in 30..100
    assert random_attributes.wisdom in 30..100
    assert random_attributes.discipline in 30..100
  end

  test "generate_random_base_attributes/0 does not default to 0 at any time on any attribute" do
    random_attributes = BaseAttributes.generate_random_base_attributes()

    assert random_attributes.strength !== 0
    assert random_attributes.constitution !== 0
    assert random_attributes.agility !== 0
    assert random_attributes.intelligence !== 0
    assert random_attributes.wisdom !== 0
    assert random_attributes.discipline !== 0
  end

  test "generate_random_base_attributes/0 does not exceed 100" do
    random_attributes = BaseAttributes.generate_random_base_attributes()

    assert random_attributes.strength <= 100
    assert random_attributes.constitution <= 100
    assert random_attributes.agility <= 100
    assert random_attributes.intelligence <= 100
    assert random_attributes.wisdom <= 100
    assert random_attributes.discipline <= 100
  end

  test "generate_default_base_attributes/0 matches expected results" do
    default_attributes = BaseAttributes.generate_default_base_attributes()

    assert default_attributes == BaseAttributesFixtures.base_attributes_default_fixture()
  end
end
