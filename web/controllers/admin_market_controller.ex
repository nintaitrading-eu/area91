defmodule Area91.AdminMarketController do
  use Phoenix.Controller

  alias Area91.Router
  import Area91.Router.Helpers

  plug :action

  def account(conn, _params) do
    conn
    |> assign(:accounts, Area91.Repo.all(Area91.Market))
    |> render("account.html")
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def create(conn, %{"account" => %{"name" => name, "description" => description}}) do
    l_market = %Area91.Market{name: name, description: description}
    Area91.Repo.insert(l_account)
    redirect(conn, to: admin_account_path(conn, :overview))
  end

end
