defmodule Area91.Currency do
  use Area91.Web, :model

  @primary_key {:currency_id, :integer, []}
  @derive {Phoenix.Param, key: :currency_id}
  schema "t_currency" do
    field :code, :string
    field :description, :string
    field :is_deleted, :boolean
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(code description is_deleted date_created date_modified)
  @required ~w(code description is_deleted date_created date_modified)a

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
    #|> validate_length(:code, min: 3, max: 3)
  end

end
