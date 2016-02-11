defmodule Area91.FinanceLeverageController do
  use Phoenix.Controller

  plug :action

  def leverage(conn, _params) do
    render conn, "leverage.html"
  end
end
