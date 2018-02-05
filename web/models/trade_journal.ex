defmodule Area91.TradeJournal do
  use Area91.Web, :model
  import Tuple

  schema "trade_journal" do
    field :account_name, :string, virtual: true
    # TODO: add fields from trade_calculated
    has_one :trade_calculated, Area91.TradeCalculated
    field :product_name, :string, virtual: true
    field :product_type_name, :string, virtual: true
    field :currency_code, :string, virtual: true
    field :pool, :float, virtual: true
    # TODO: add costs
    # TODO: add drawdown values
    field :date_buy, Timex.Ecto.DateTime, virtual: true
    field :year_buy, :integer, virtual: true
    field :month_buy, :integer, virtual: true
    field :day_buy, :integer, virtual: true
    field :date_sell, Timex.Ecto.DateTime, virtual: true
    field :year_sell, :integer, virtual: true
    field :month_sell, :integer, virtual: true
    field :day_sell, :integer, virtual: true
    field :is_deleted, :boolean, virtual: true
    field :date_created, Timex.Ecto.DateTime, virtual: true
    field :date_modified, Timex.Ecto.DateTime, virtual: true
  end

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  # Note: add required params below.
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, [
        :account_name,
        :product_name,
        :product_type_name,
        :currency_code,
        :pool,
        :date_buy,
        :year_buy,
        :month_buy,
        :day_buy,
        :date_sell,
        :year_sell,
        :month_sell,
        :day_sell])
    |> validate_required([
        :account_name,
        :product_name,
        :product_type_name,
        :currency_code,
        :pool,
        :date_buy,
        :year_buy,
        :month_buy,
        :day_buy,
        :date_sell,
        :year_sell,
        :month_sell,
        :day_sell])
  end

end
