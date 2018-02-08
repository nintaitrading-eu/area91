defmodule Area91.CurrencyExchange do
  use Area91.Web, :model

  @primary_key {:currency_exchange_id, :integer, []}
  @derive {Phoenix.Param, key: :currency_exchange_id}
  schema "t_currency_exchange" do
    belongs_to :currency_from, Area91.Currency, references: :currency_id
    belongs_to :currency_to, Area91.Currency, references: :currency_id
    field :exchange_rate, :decimal
    field :is_deleted, :boolean
    field :date_created, Timex.Ecto.DateTime
    field :date_modified, Timex.Ecto.DateTime
  end

  @fields ~w(currency_from currency_to exchange_rate is_deleted date_created date_modified)
  @required ~w(currency_from currency_to exchange_rate is_deleted date_created date_modified)a

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
