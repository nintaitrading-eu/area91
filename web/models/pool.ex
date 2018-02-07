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
    field :date_created, Timex.Ecto.DateTime
    field :date_modified, Timex.Ecto.DateTime
  end

  @required_fields ~w(total invested cash is_manually_added)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, a_params \\ %{}) do
    a_model
    |> cast(a_params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
  end

end
