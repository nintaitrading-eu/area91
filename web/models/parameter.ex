defmodule Area91.Parameter do
  use Ecto.Schema
  import Ecto.Changeset

  schema "T_PARAMETER" do
    field :name, :string
    field :value, :string
    field :description, :string
    field :is_active, :integer, default: 1
    timestamps([{:date_created,:date_modified}])
  end

  @required_fields ~w(name value)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:name, max: 50)
    |> validate_length(:value, max: 512)
    |> unique_constraint(:code)
  end


end
