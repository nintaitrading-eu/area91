defmodule Area91.AdminCurrencyController do
  use Phoenix.Controller

  plug :action

  def currency(conn, _params) do
    render conn, "currency.html"
  end
end
