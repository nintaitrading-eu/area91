defmodule Area91.ImportAccounts do
  use Area91.Web, :model
  import Tuple

  schema "import_accounts" do
    field :file, :any, virtual: true
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:file])
    |> validate_required([:file])
  end

end
