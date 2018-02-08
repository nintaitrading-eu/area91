defmodule Area91.TradeLeverage do
  use Area91.Web, :model
  import Tuple

  schema "trade_leverage" do
    field :contracts, :integer, virtual: true
    field :contracts_leverage, :integer, virtual: true
  end

  @fields ~w(contracts contracts_leverage)
  @required ~w(contracts)a

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
  end

end
