defmodule Area91.AdminAccount do
  use Ecto.Schema
  import Ecto.Changeset

  schema "T_ACCOUNT" do
    field :name, :string
    field :description, :string
    field :is_active, :integer, default: 1
    # Note: timestamps generates inserted_at/updated_at,
    # the below parameter will make us use our own fieldnames.
    timestamps([{:date_created,:date_modified}])
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> unique_constraint(:name)
  end

end
