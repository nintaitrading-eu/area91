defmodule Area91.TradeJournalController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    conn
    #|> assign(:version, Area91.Repo.all(Area91.Version))
    |> render("index.html")
  end

end
