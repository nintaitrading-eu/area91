defmodule Area91.Parameter do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:parameter_id, :integer, []}
  @derive {Phoenix.Param, key: :parameter_id}
  schema "t_parameter" do
    field :name, :string
    field :value, :string
    field :value_default, :string
    field :description, :string
    field :datatype, :string
    field :is_deleted, :boolean
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(name value value_default description datatype is_deleted date_created date_modified)
  @required ~w(name value value_default description datatype is_deleted date_created date_modified)a

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
    |> validate_length(:value, max: 512)
  end

end
