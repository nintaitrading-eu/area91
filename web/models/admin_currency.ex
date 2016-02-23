defmodule Area91.AdminCurrency do
  use Ecto.Schema

  schema "T_CURRENCY" do
    field :code, :string
    field :description, :string
  end

end
