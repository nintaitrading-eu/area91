defmodule Area91.ImportAccounts do
  use Area91.Web, :model
  #import Ecto.Changeset

  schema "import_accounts" do
    field :file_full_path, :string
    field :file_content,  :string
  end

  #@required_fields ~w(file_full_path)
  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:file_full_path])
    |> validate_required([:file_full_path])
  end

end
