defmodule Character do
  alias BaseAttributes
  alias BaseInformation

  defstruct attributes: %BaseAttributes{}, information: %BaseInformation{}

  def new_random_character do
    %Character{
      attributes: BaseAttributes.generate_random_base_attributes(),
      information: BaseInformation.generate_random_base_information()
    }
  end
end
