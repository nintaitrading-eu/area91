defmodule Area91.TradeFinancingController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    conn
    |> render("index.html")
  end

end
