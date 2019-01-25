defmodule Area91.Api.AdminCurrencyController do
  use Phoenix.Controller
  use Timex
  require Logger

  alias Area91.Currency
  import Area91.Router.Helpers

  def index(conn, _params) do
    json conn, Area91.Repo.all(Currency)
  end

  def show(conn, %{"id" => a_currency_id}) do
    {l_currency_id, _} = Integer.parse(a_currency_id)
    l_currency = Area91.Repo.get!(Currency, l_currency_id)
    json conn, l_currency
  end

  # TODO: Is this needed?
  def new(conn, _params) do
    l_currency = %Currency{}
    l_changeset = Currency.changeset(l_currency)
    json conn, l_changeset
  end

  def create(conn, %{"currency" => %{"code" => a_code, "description" => a_description}}) do
    l_currency = %Currency{code: a_code, description: a_description, date_created: Timex.now}
    Area91.Repo.insert(l_currency)
    json conn, l_currency
  end

  # TODO: needs to contain all values as parameters, so you can edit what is needed
  def edit(conn, %{"id" => a_currency_id}) do
    {l_currency_id, _} = Integer.parse(a_currency_id)
    l_currency = Area91.Repo.get!(Currency, l_currency_id)
    l_changeset = Currency.changeset(l_currency)
    json conn, l_changeset
  end

  # To much here, edit/update etc.
  #def update(conn, %{"id" => a_currency_id, "currency" => a_params}) do
  #  {l_currency_id, _} = Integer.parse(a_currency_id)
  #  l_currency = Area91.Repo.get!(Currency, l_currency_id)
  #  l_currency_changeset = Currency.changeset(l_currency, a_params)
  #  case Area91.Repo.update(l_currency_changeset) do
  #    {:ok, _} ->
  #      conn
  #        |> put_flash(:info, "Currency updated successfully.")
  #        |> redirect(to: admin_currency_path(conn, :index, Area91.Repo.all(Currency)))
  #    {:error, l_currency_changeset} ->
  #      conn
  #        |> put_flash(:info, "Failed to update currency.")
  #        |> render("edit.html", currency: l_currency, changeset: l_currency_changeset)
  #  end
  #end

  def delete(conn, %{"id" => currency_id}) do
    {currency_id, _} = Integer.parse(currency_id)
    l_currency = Area91.Repo.get(Currency, currency_id)
    Area91.Repo.delete(l_currency)
    json conn, l_currency
  end

end
