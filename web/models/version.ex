defmodule Area91.Version do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:version_id, :integer, []}
  @derive {Phoenix.Param, key: :version_id}
  schema "t_version" do
    field :database_version, :string
    field :database_version_info, :string
    field :application_version, :string
    field :application_version_info, :string
    timestamps([{:date_created,:date_modified}])
  end

  @required_fields ~w(database_version, database_version_info, application_version, application_version_info)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

end
