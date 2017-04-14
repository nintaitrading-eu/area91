defmodule Area91.Market do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:market_id, :integer, []}
  @derive {Phoenix.Param, key: :market_id}
  schema "t_market" do
    field :code, :string
    field :name, :string
    field :country, :string
    field :is_active, :integer, default: 1
    timestamps([{:date_created,:date_modified}])
  end

  @required_fields ~w(code name country)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:code, max: 50)
    |> validate_length(:name, max: 30)
    |> validate_length(:country, max: 3)
    |> unique_constraint(:code)
  end

end
