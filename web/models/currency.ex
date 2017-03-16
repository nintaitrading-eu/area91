defmodule Area91.Currency do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:currency_id, :integer, []}
  @derive {Phoenix.Param, key: :currency_id}
  schema "t_currency" do
    field :code, :string
    field :description, :string
    field :is_deleted, :boolean
    field :date_created, Timex.Ecto.DateTime
    field :date_modified, Timex.Ecto.DateTime
  end

  @required_fields ~w(code)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:code, min: 3, max: 3)
    |> unique_constraint(:code)
  end

end
