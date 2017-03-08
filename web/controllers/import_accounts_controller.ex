defmodule Area91.ImportAccountsController do
  use Phoenix.Controller

  alias Area91.ImportAccounts
  import Area91.Router.Helpers

  plug :action

  def index(conn, a_params) do
    # TODO: Show data about accounts?
    l_changeset = ImportAccounts.changeset(%ImportAccounts{})
    conn
    |> render("new.html", changeset: l_changeset)
  end

  def edit(conn, a_params) do
    l_changeset = ImportAccounts.changeset(%ImportAccounts{})
    conn
    |> render("new.html", changeset: l_changeset)
  end

  def create(conn, a_params) do
    IO.inspect a_params
    #conn
    #|> render("index.html")
    redirect(conn, to: import_accounts_path(conn, :index))
  end

end
