defmodule Area91.TradeCost do
  use Area91.Web, :model
  import Ecto.Query

  @primary_key {:trade_cost_id, :integer, []}
  @derive {Phoenix.Param, key: :trade_cost_id}
  schema "t_trade_cost" do
    field :commission, :decimal
    field :tax, :decimal
    field :is_manually_added, :boolean
    field :is_deleted, :boolean
    field :date_created, Timex.Ecto.DateTime
    field :date_modified, Timex.Ecto.DateTime
  end

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  # Note: add required params below.
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, [:commission, :tax, :is_manually_added, :is_deleted])
    |> validate_required([:commission, :tax, :is_manually_added, :is_deleted])
  end

end
