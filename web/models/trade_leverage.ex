defmodule Area91.TradeLeverage do
  use Area91.Web, :model
  import Tuple

  schema "trade_leverage" do
    field :contracts, :any, virtual: true
    field :contracts_leverage, :any, virtual: true
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:contracts])
    |> validate_required([:contracts])
  end

end
