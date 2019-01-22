defmodule Area91.TradeDrawdownController do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
