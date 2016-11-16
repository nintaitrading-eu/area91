defmodule Area91.AdminAccountController do
  use Phoenix.Controller

  alias Area91.Router
  import Area91.Router.Helpers

  plug :action

  def account(conn, _params) do
    conn
    |> assign(:accounts, Area91.Repo.all(Area91.Account))
    |> render("account.html")
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def create(conn, %{"txt_account" => %{"name" => name, "description" => description}}) do
    l_account = %Area91.Account{name: name, description: description}
    Area91.Repo.insert(l_account)
    redirect(conn, to: admin_account_path(conn, :index))
  end

  def edit(conn, %{"account_id" => account_id}) do
    {account_id, _} = Integer.parse(account_id)
    conn
    |> assign(:account, Repo.get(Area91.Account, account_id))
    |> render("edit.html")
  end

  def update(conn, %{"account_id" => account_id, "account" => %{"name" => name, "description" => description}}) do
    {account_id, _} = Integer.parse(account_id)
    l_account = Area91.Repo.get(Area91.Account, account_id)
    l_account = %{l_account | name: name, description: description }
    Area91.Repo.update(l_account)
    redirect(conn, to: quote_path(conn, :show, l_account.account_id))
  end

  def destroy(conn, %{"account_id" => account_id}) do
    {account_id, _} = Integer.parse(account_id)
    l_account = Area91.Repo.get(Area91.Account, account_id)
    Repo.delete(l_account)
    redirect conn, to: quote_path(conn, :index)
  end
end
