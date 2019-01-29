defmodule Area91.TradeJournal do
  use Area91.Web, :model

  schema "trade_journal" do
    belongs_to :account, Area91.Account, [foreign_key: :p_id, references: :account_id, define_field: false]
    belongs_to :trade_calculated, Area91.TradeCalculated, [foreign_key: :trade_calculated_id, references: :trade_calculated_id, define_field: false]
    belongs_to :product, Area91.Product, [foreign_key: :product_id, references: :product_id, define_field: false]
    belongs_to :currency, Area91.Currency, [foreign_key: :currency_id, references: :currency_id, define_field: false]
    field :pool, :float, virtual: true
    belongs_to :trade_cost, Area91.TradeCost, [foreign_key: :trade_cost_id, references: :trade_cost_id, define_field: false]
    belongs_to :trade_drawdown, Area91.TradeDrawdown, [foreign_key: :trade_drawdown_id, references: :trade_drawdown_id, define_field: false]
    field :date_buy, :naive_datetime, virtual: true
    field :year_buy, :integer, virtual: true
    field :month_buy, :integer, virtual: true
    field :day_buy, :integer, virtual: true
    field :date_sell, :naive_datetime, virtual: true
    field :year_sell, :integer, virtual: true
    field :month_sell, :integer, virtual: true
    field :day_sell, :integer, virtual: true
    field :price_buy, :decimal, virtual: true
    field :price_sell, :decimal, virtual: true
    field :shares_buy, :integer, virtual: true
    field :shares_sell, :integer, virtual: true
    field :commission_buy, :decimal, virtual: true
    field :commission_sell, :decimal, virtual: true
    field :tax_buy, :decimal, virtual: true
    field :tax_sell, :decimal, virtual: true
    field :is_deleted, :boolean, virtual: true
    field :date_created, :naive_datetime, virtual: true
    field :date_modified, :naive_datetime, virtual: true
  end

  @fields ~w(account product currency pool date_buy date_buy year_buy month_buy day_buy date_sell year_sell month_sell day_sell is_deleted date_created date_modified)
  @required ~w(account product currency pool date_buy date_buy year_buy month_buy day_buy date_sell year_sell month_sell day_sell is_deleted date_created date_modified)a

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
