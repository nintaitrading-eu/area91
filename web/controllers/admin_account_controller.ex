defmodule Area91.AdminAccountController do
  use Phoenix.Controller
  use Timex
  require Logger

  alias Area91.Router
  alias Area91.Account
  import Area91.Router.Helpers

  plug :action

  def index(conn, _params) do
    l_accounts = Area91.Repo.all(Account)
    conn
    |> assign(:accounts, Area91.Repo.all(Account))
    |> render("index.html", accounts: l_accounts)
  end

  def show(conn, %{"id" => a_account_id}) do
    {l_account_id, _} = Integer.parse(a_account_id)
    l_account = Area91.Repo.get!(Account, l_account_id)
    render(conn, "show.html", account: l_account)
  end

  def new(conn, _params) do
    l_account = %Account{}
    l_changeset = Account.changeset(l_account)
    render(conn, "new.html", account: l_account, changeset: l_changeset)
  end

  def create(conn, %{"account" => %{"name" => name, "description" => description}}) do
    Area91.Repo.insert(%Account{name: name, description: description, date_created: Timex.now})
    redirect(conn, to: admin_account_path(conn, :index))
  end

  def edit(conn, %{"id" => a_account_id}) do
    {l_account_id, _} = Integer.parse(a_account_id)
    l_account = Area91.Repo.get!(Account, l_account_id)
    l_changeset = Account.changeset(l_account)
    render(conn, "edit.html", account: l_account, changeset: l_changeset)
  end

  def update(conn, %{"id" => a_account_id, "account" => a_params}) do
    #Logger.info "--- Test debug info ---"
    #Logger.debug "update --- a_params value: #{inspect(a_params)}"
    {l_account_id, _} = Integer.parse(a_account_id)
    l_account = Area91.Repo.get!(Account, l_account_id)
    #Logger.debug "update --- l_account value: #{inspect(l_account)}"
    l_account_changeset = Account.changeset(l_account, a_params)
    #Logger.debug "update --- l_account_changeset: #{inspect(l_account_changeset)}"
    #Logger.debug "update --- l_account_changeset.data: #{inspect(l_account_changeset.data)}"
    case Area91.Repo.update(l_account_changeset) do
      {:ok, l_account} ->
        conn
          |> put_flash(:info, "Account updated successfully.")
          |> redirect(to: admin_account_path(conn, :index, Area91.Repo.all(Account)))
      {:error, l_account_changeset} ->
        conn
          |> put_flash(:info, "Failed to update account.")
          |> render("edit.html", account: l_account, changeset: l_account_changeset)
    end
  end

  def delete(conn, %{"id" => account_id}) do
    {account_id, _} = Integer.parse(account_id)
    l_account = Area91.Repo.get(Account, account_id)
    Area91.Repo.delete(l_account)
    redirect(conn, to: admin_account_path(conn, :index))
  end
end
