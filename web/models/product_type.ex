defmodule Area91.ProductType do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:product_type_id, :integer, []}
  @derive {Phoenix.Param, key: :product_type_id}
  schema "t_product_type" do
    field :name, :string
    field :description, :string
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
    |> cast(a_params, [:name, :description])
    |> validate_required([:name, :description])
  end

end