defmodule Area91.Pool do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:pool_id, :integer, []}
  @derive {Phoenix.Param, key: :pool_id}
  schema "t_pool" do
    belongs_to :account, Area91.Account, [foreign_key: :account_id, references: :account_id, define_field: false]
    field :total, :float
    field :invested, :float
    field :cash, :float
    field :is_manually_added, :boolean
    field :is_deleted, :boolean
    field :date_created, :naive_datetime
    field :date_modified, :naive_datetime
  end

  @fields ~w(account total invested cash is_manually_added)
  @required ~w(account total invested cash is_manually_added)a

  @doc """
  Creates a changeset based on the `a_model` and `a_params`.

  If no a_params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(a_model, %Area91.Account{} = a_account, a_params \\ %{}) do
    a_model
    |> cast(a_params, @fields)
    |> validate_required(@required)
    |> put_assoc(:account, a_account)
  end

end
