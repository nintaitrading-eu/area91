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
    field :date_created, Ecto.DateTime
    field :date_modified, Ecto.DateTime
  end

  @fields ~w(database_version, database_version_info, application_version, application_version_info)
  @required ~w(database_version, database_version_info, application_version, application_version_info)a

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
