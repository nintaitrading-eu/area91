defmodule Area91.Market do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:market_id, :integer, []}
  @derive {Phoenix.Param, key: :market_id}
  schema "t_market" do
    field :code, :string
    field :name, :string
    field :country, :string
    field :is_deleted, :boolean
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(code name country is_deleted date_created date_modified)
  @required ~w(code name country is_deleted date_created date_modified)a

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
    |> validate_length(:code, max: 50)
    |> validate_length(:name, max: 30)
    |> validate_length(:country, max: 3)
    |> unique_constraint(:code)
  end

end
