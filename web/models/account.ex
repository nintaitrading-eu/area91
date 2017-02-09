defmodule Area91.Account do
  use Area91.Web, :model
  #use Ecto.Schema, Ecto.Type
  #import Ecto.Changeset

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

  @required_fields ~w(name description)
  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  # Note: add required params below.
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, ~w(name description is_active date_created date_modified))
    |> validate_required(~w(name description))
    #|> unique_constraint([:name])
  end

end
