defmodule Area91.ImportAccounts do
  use Area91.Web, :model
  import Tuple

  schema "import_accounts" do
    field :file, :any, virtual: true
  end

  @fields ~w(file)
  @required ~w(file)

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
  end

end
