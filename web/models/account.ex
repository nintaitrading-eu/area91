defmodule Area91.Account do
  use Area91.Web, :model
  #use Ecto.Schema, Ecto.Type
  #import Ecto.Changeset
  import Ecto.Query

  @primary_key {:account_id, :integer, []}
  @derive {Phoenix.Param, key: :account_id}
  schema "t_account" do
    #field :account_id, :integer, primary_key: True
    field :name, :string
    field :description, :string
    field :is_active, :integer, default: 1
    field :date_created, Ecto.DateTime
    field :date_modified, Ecto.DateTime
    #belongs_to :account, Area91.Account
  end

  #@required_fields ~w(name description)
  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  # Note: add required params below.
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:name, :description])
    |> validate_required([:name, :description])
    #|> unique_constraint([:name])
  end

end
