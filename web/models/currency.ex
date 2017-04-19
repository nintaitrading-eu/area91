defmodule Area91.Currency do
  use Area91.Web, :model
  #import Ecto.Changeset
  import Ecto.Query

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

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ :empty) do
    a_model
    |> cast(a_params, [:code, :description])
    |> validate_required([:code, :description])
    |> validate_length(:code, min: 3, max: 3)
    |> unique_constraint(:code)
  end

end
