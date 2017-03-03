defmodule Area91.ImportAccountsController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
 
  def edit(conn, _params) do
    l_changeset = File.changeset
    conn
    |> render("index.html")
  end

  def (conn, _params) do
    conn
    |> render("index.html")
  end

end
