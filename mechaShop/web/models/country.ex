defmodule MechaShop.Country do
  use MechaShop.Web, :model

  schema "countries" do
    field :name, :string
    field :code, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :code])
    |> validate_required([:name, :code])
  end
end
