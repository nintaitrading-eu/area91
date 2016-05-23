defmodule Area91.Account do
  use Ecto.Schema, Ecto.Type
  import Ecto.Changeset

  @primary_key {:account_id, :integer, []}
  @derive {Phoenix.Param, key: :account_id}
  schema "t_account" do
    #field :account_id, :integer, primary_key: True
    field :name, :string
    field :description, :string
    field :is_active, :integer, default: 1
    field :date_created, Ecto.DateTime
    field :date_modified, Ecto.DateTime
  end

  @required_fields ~w(name)
  @optional_fields ~w(description)

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
