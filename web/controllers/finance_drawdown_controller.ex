defmodule Area91.FinanceDrawdownController do
  use Phoenix.Controller

  plug :action

  def drawdown(conn, _params) do
    render conn, "drawdown.html"
  end
end
