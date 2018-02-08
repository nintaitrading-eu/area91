defmodule Area91.TradeDrawdown do
  use Area91.Web, :model

  @primary_key {:trade_drawdown_id, :integer, []}
  @derive {Phoenix.Param, key: :trade_drawdown_id}
  schema "t_trade_drawdown" do
    field :drawdown_current, :decimal
    field :drawdown_max, :decimal
    field :is_deleted, :boolean, default: false
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(drawdown_current drawdown_max is_deleted date_created date_modified)
  @required ~w(drawdown_current drawdown_max is_deleted date_created date_modified)

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
  end

end
