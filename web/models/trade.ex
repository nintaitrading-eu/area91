defmodule Area91.Trade do
  use Area91.Web, :model

  @primary_key {:trade_id, :integer, []}
  @derive {Phoenix.Param, key: :trade_id}
  schema "t_trade" do
    belongs_to :trade_calculated, Area91.TradeCalculated, references: :trade_calculated_id
    field :product_id, :integer
    field :pool_id, :integer
    belongs_to :trade_cost, Area91.TradeCost, references: :trade_cost_id
    belongs_to :trade_drawdown, Area91.TradeDrawdown, references: :trade_drawdown_id
    field :date_buy, Timex.Ecto.DateTime
    field :year_buy, :integer
    field :month_buy, :integer
    field :day_buy, :integer
    field :date_sell, Timex.Ecto.DateTime
    field :year_sell, :integer
    field :month_sell, :integer
    field :day_sell, :integer
    field :price_buy, :decimal
    field :price_sell, :decimal
    field :shares_buy, :integer
    field :shares_sell, :integer
    field :commission_buy, :decimal
    field :commission_sell, :decimal
    field :tax_buy, :decimal
    field :tax_sell, :decimal
    field :is_deleted, :boolean, default: false
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(trade_calculated product_id pool_id trade_cost trade_drawdown date_buy year_buy month_buy day_buy date_sell year_sell month_sell day_sell price_buy price_sell shares_buy shares_sell commission_buy commission_sell tax_buy tax_sell is_deleted date_created date_modified)
  @required ~w(trade_calculated product_id pool_id trade_cost drawdown date_buy year_buy month_buy day_buy date_sell year_sell month_sell day_sell price_buy price_sell shares_buy shares_sell commission_buy commission_sell tax_buy tax_sell is_deleted date_created date_modified)a

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
    |> assoc_constraint(:trade_calculated)
    |> assoc_constraint(:trade_cost)
    |> assoc_constraint(:trade_drawdown)
  end

end
