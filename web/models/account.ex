defmodule Area91.Account do
  use Area91.Web, :model

  @primary_key {:account_id, :integer, []}
  @derive {Phoenix.Param, key: :account_id}
  schema "t_account" do
    field :name, :string
    field :description, :string
    field :is_deleted, :boolean
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(name description is_deleted date_created date_modified)
  @required ~w(name description is_deleted date_created date_modified)

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  # Note: add required params below.
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
  end

end
