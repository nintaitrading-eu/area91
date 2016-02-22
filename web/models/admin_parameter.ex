defmodule Area91.AdminParameter do
  use Ecto.Schema

  schema "T_PARAMETER" do
    field :name, :string
    field :value, :string
    field :description, :string
    field :is_active, :integer, default: 1
    # Note: timestamps generates inserted_at/updated_at,
    # the below parameter will make us use our own fieldnames.
    timestamps([{:date_created,:date_modified}])
  end

end
