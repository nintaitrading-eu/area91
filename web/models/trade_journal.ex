defmodule Area91.TradeJournal do
  use Area91.Web, :model

  schema "trade_journal" do
    field :account_name, :string, virtual: true
    belongs_to :trade_calculated, Area91.TradeCalculated, references: :trade_calculated_id
    field :product_name, :string, virtual: true
    field :product_type_name, :string, virtual: true
    field :currency_code, :string, virtual: true
    field :pool, :float, virtual: true
    belongs_to :trade_cost, Area91.TradeCost, references: :trade_cost_id
    belongs_to :trade_drawdown, Area91.TradeDrawdown, references: :trade_drawdown_id
    field :date_buy, Timex.Ecto.DateTime, virtual: true
    field :year_buy, :integer, virtual: true
    field :month_buy, :integer, virtual: true
    field :day_buy, :integer, virtual: true
    field :date_sell, Timex.Ecto.DateTime, virtual: true
    field :year_sell, :integer, virtual: true
    field :month_sell, :integer, virtual: true
    field :day_sell, :integer, virtual: true
    field :is_deleted, :boolean, virtual: true
    field :date_created, :naive_datetime, virtual: true
    field :date_modified, :naive_datetime, virtual: true
  end

  @fields ~w(account_name trade_calculated product_name product_type_name currency_code pool trade_cost trade_drawdown date_buy date_buy year_buy month_buy day_buy date_sell year_sell month_sell day_sell is_deleted date_created date_modified)
  @required ~w(account_name trade_calculated product_name product_type_name currency_code pool trade_cost trade_drawdown date_buy date_buy year_buy month_buy day_buy date_sell year_sell month_sell day_sell is_deleted date_created date_modified)

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
