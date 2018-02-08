defmodule Area91.TradeCalculated do
  use Area91.Web, :model

  @primary_key {:trade_calculated_id, :integer, []}
  @derive {Phoenix.Param, key: :trade_calculated_id}
  schema "t_trade_calculated" do
    field :price_buy, :decimal
    field :price_sell, :decimal
    field :amount_buy, :decimal
    field :amount_sell, :decimal
    field :amount_buy_total, :decimal
    field :amount_sell_total, :decimal
    field :risk_input, :decimal
    field :risk_initial, :decimal
    field :risk_initial_percent, :decimal
    field :cost_total, :decimal
    field :cost_other, :decimal
    field :stoploss, :decimal
    field :stoploss_orig, :decimal
    field :profit_loss, :decimal
    field :profit_loss_orig, :decimal
    field :profit_loss_total, :decimal
    field :profit_loss_total_percent, :decimal
    field :r_multiple, :decimal
    field :is_deleted, :boolean, default: false
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(price_buy price_sell amount_buy amount_sell amount_buy_total amount_sell_total risk_input risk_initial risk_initial_percent cost_total cost_other stoploss stoploss_orig profit_loss profit_loss_orig profit_loss_total profit_loss_total_percent r_multiple is_deleted date_created date_modified)
  @required ~w(price_buy price_sell amount_buy amount_sell amount_buy_total amount_sell_total risk_input risk_initial risk_initial_percent cost_total cost_other stoploss stoploss_orig profit_loss profit_loss_orig profit_loss_total profit_loss_total_percent r_multiple is_deleted date_created date_modified)

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  # Note: add required params below.
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
  end

end
