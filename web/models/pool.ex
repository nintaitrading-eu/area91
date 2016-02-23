defmodule Area91.Pool do
  use Ecto.Schema
  import Ecto.Changeset

  schema "T_POOL" do
    field :total, :float
    field :invested, :float
    field :cash, :float
    field :is_active, :integer, default: 1
    timestamps([{:date_created,:date_modified}])
  end

  @required_fields ~w(total invested cash)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

end
