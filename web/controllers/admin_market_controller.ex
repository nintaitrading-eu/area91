defmodule Area91.AdminMarketController do
  use Phoenix.Controller

  alias Area91.Router
  import Area91.Router.Helpers

  def index(conn, _params) do
    conn
    |> assign(:markets, Area91.Repo.all(Area91.Market))
    |> render("index.html")
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def create(conn, %{"market" => %{"name" => name, "code" => code}}) do
    l_market = %Area91.Market{name: name, code: code}
    Area91.Repo.insert(l_market)
    redirect(conn, to: admin_market_path(conn, :overview))
  end

end
