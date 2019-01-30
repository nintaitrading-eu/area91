defmodule Area91.FinancePoolController do
  use Phoenix.Controller
  use Timex
  require Logger

  alias Area91.Pool
  import Area91.Router.Helpers
  import Ecto.Query

  def index(conn, _params) do
    l_pool_records = Area91.Repo.all from p in Pool,
      join: a in assoc(p, :account),
      preload: [account: a]
    conn
    |> assign(:pool_records, Area91.Repo.all(Pool))
    |> render("index.html", pool_records: l_pool_records)
  end

  def show(conn, %{"id" => a_pool_id}) do
    {l_pool_id, _} = Integer.parse(a_pool_id)
    l_pool = Area91.Repo.get!(Pool, l_pool_id)
    render(conn, "show.html", pool: l_pool)
  end

  def new(conn, _params) do
    l_pool = %Pool{}
    l_changeset = Pool.changeset(l_pool)
    render(conn, "new.html", pool: l_pool, changeset: l_changeset)
  end

  # TODO: how to make the difference between manually added or not?
  # Perhaps with the param a_is_manually_added that can be set from the view?
  def create(conn, %{"pool" => %{"account" => a_account_id, "total" => a_total, "invested" => a_invested, "cash" => a_cash}}) do
    {l_account_id, _} = Integer.parse(a_account_id)
    {l_total, _} = Float.parse(a_total)
    {l_invested, _} = Float.parse(a_invested)
    {l_cash, _} = Float.parse(a_cash)
    Area91.Repo.insert(%Pool{account: l_account_id, total: l_total, invested: l_invested, cash: l_cash, is_manually_added: true, date_created: Timex.now})
    redirect(conn, to: finance_pool_path(conn, :index))
  end

  def edit(conn, %{"id" => a_pool_id}) do
    {l_pool_id, _} = Integer.parse(a_pool_id)
    l_pool = Area91.Repo.get!(Pool, l_pool_id)
    l_changeset = Pool.changeset(l_pool)
    render(conn, "edit.html", pool: l_pool, changeset: l_changeset)
  end

  def update(conn, %{"id" => a_pool_id, "pool" => a_params}) do
    {l_pool_id, _} = Integer.parse(a_pool_id)
    l_pool = Area91.Repo.get!(Pool, l_pool_id)
    l_pool_changeset = Pool.changeset(l_pool, a_params)
    case Area91.Repo.update(l_pool_changeset) do
      {:ok, _} ->
        conn
          |> put_flash(:info, "Pool updated successfully.")
          |> redirect(to: finance_pool_path(conn, :index, Area91.Repo.all(Pool)))
      {:error, l_pool_changeset} ->
        conn
          |> put_flash(:info, "Failed to update pool.")
          |> render("edit.html", pool: l_pool, changeset: l_pool_changeset)
    end
  end

  def delete(conn, %{"id" => pool_id}) do
    {pool_id, _} = Integer.parse(pool_id)
    l_pool = Area91.Repo.get(Pool, pool_id)
    Area91.Repo.delete(l_pool)
    redirect(conn, to: finance_pool_path(conn, :index))
  end

end
