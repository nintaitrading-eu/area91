defmodule Area91.ImportAccountsController do
  use Phoenix.Controller

  alias Area91.Account
  import Area91.Router.Helpers

  plug :action

  def index(conn, _params) do
    # TODO: Show data about accounts?
    conn
    |> render("new.html")
  end

  def edit(conn, _params) do
    conn
    |> render("new.html")
  end

  def create(conn, _params) do
    IO.inspect _params
    #conn
    #|> render("index.html")
    redirect(conn, to: import_accounts_path(conn, :index))
  end

end
