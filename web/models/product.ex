defmodule Area91.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:product_id, :integer, []}
  @derive {Phoenix.Param, key: :product_id}
  schema "t_product" do
    field :name, :string
    field :description, :string
    # TODO: Uncomment below, after the other tables/models have been implemented
    #has_one :product_type, Area91.ProductType
    has_one :currency, Area91.Currency
    has_one :market, Area91.Market
    #has_one :product_tick_info, Area91.ProductTickInfo
    field :is_deleted, :boolean, default: :false 
    field :date_created, Timex.Ecto.DateTime
    field :date_modified, Timex.Ecto.DateTime
  end

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, [:name, :description, :product_type, :currency, :market, :product_tick_info])
    |> validate_required([:name, :description, :product_type, :currency, :market])
  end

end
