defmodule Area91.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:product_id, :integer, []}
  @derive {Phoenix.Param, key: :product_id}
  schema "t_product" do
    field :name, :string
    field :description, :string
    belongs_to :product_type, Area91.ProductType, [foreign_key: :product_type_id, references: :product_type_id, define_field: false]
    belongs_to :currency, Area91.Currency, [foreign_key: :currency_id, references: :currency_id, define_field: false]
    belongs_to :market, Area91.Market, [foreign_key: :market_id, references: :market_id, define_field: false]
    belongs_to :product_tick_info, Area91.ProductTickInfo, [foreign_key: :product_tick_info_id, references: :product_tick_info_id, define_field: false]
    field :is_deleted, :boolean, default: :false 
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(name description product_type currency market product_tick_info)
  @required ~w(name description product_type currency market product_tick_info)a

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
