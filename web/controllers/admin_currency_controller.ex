defmodule Area91.AdminCurrencyController do
  use Phoenix.Controller
  use Timex
  require Logger

  alias Area91.Router
  alias Area91.Currency
  import Area91.Router.Helpers

  plug :action

  def index(conn, _params) do
    l_currency_records = Area91.Repo.all(Currency)
    conn
    |> assign(:currency_records, Area91.Repo.all(Currency))
    |> render("index.html", currency_records: l_currency_records)
  end

  def show(conn, %{"id" => a_currency_id}) do
    {l_currency_id, _} = Integer.parse(a_currency_id)
    l_currency = Area91.Repo.get!(Currency, l_currency_id)
    render(conn, "show.html", currency: l_currency)
  end

  def new(conn, _params) do
    l_currency = %Currency{}
    l_changeset = Currency.changeset(l_currency)
    render(conn, "new.html", currency: l_currency, changeset: l_changeset)
  end

  def create(conn, %{"currency" => %{"code" => a_code, "description" => a_description}}) do
    Area91.Repo.insert(%Currency{code: a_code, description: a_description, date_created: Timex.now})
    redirect(conn, to: admin_currency_path(conn, :index))
  end

  def edit(conn, %{"id" => a_currency_id}) do
    {l_currency_id, _} = Integer.parse(a_currency_id)
    l_currency = Area91.Repo.get!(Currency, l_currency_id)
    l_changeset = Currency.changeset(l_currency)
    render(conn, "edit.html", currency: l_currency, changeset: l_changeset)
  end

  def update(conn, %{"id" => a_currency_id, "currency" => a_params}) do
    {l_currency_id, _} = Integer.parse(a_currency_id)
    l_currency = Area91.Repo.get!(Currency, l_currency_id)
    l_currency_changeset = Currency.changeset(l_currency, a_params)
    case Area91.Repo.update(l_currency_changeset) do
      {:ok, l_currency} ->
        conn
          |> put_flash(:info, "Currency updated successfully.")
          |> redirect(to: admin_currency_path(conn, :index, Area91.Repo.all(Currency)))
      {:error, l_currency_changeset} ->
        conn
          |> put_flash(:info, "Failed to update currency.")
          |> render("edit.html", currency: l_currency, changeset: l_currency_changeset)
    end
  end

  def delete(conn, %{"id" => currency_id}) do
    {currency_id, _} = Integer.parse(currency_id)
    l_currency = Area91.Repo.get(Currency, currency_id)
    Area91.Repo.delete(l_currency)
    redirect(conn, to: admin_currency_path(conn, :index))
  end

end
