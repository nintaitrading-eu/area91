defmodule Area91.Pool do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:pool_id, :integer, []}
  @derive {Phoenix.Param, key: :pool_id}
  schema "t_pool" do
    field :total, :float
    field :invested, :float
    field :cash, :float
    field :is_manually_added, :boolean
    field :is_deleted, :boolean
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(total invested cash is_manually_added is_deleted date_created date_modified)
  @required ~w(total invested cash is_manually_added is_deleted date_created date_modified)

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
  end

end
