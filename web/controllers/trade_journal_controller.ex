defmodule Area91.TradeJournalController do
  use Phoenix.Controller
  use Timex
  require Logger

  alias Area91.Trade
  import Area91.Router.Helpers

  plug :action

  def index(conn, _params) do
    l_trade_records = Area91.Repo.all(Trade)
    conn
    |> assign(:trade_records, l_trade_records)
    |> render("index.html", trade_records: l_trade_records)
  end

  def show(conn, %{"id" => a_trade_id}) do
    {l_trade_id, _} = Integer.parse(a_trade_id)
    l_trade = Area91.Repo.get!(Trade, l_trade_id)
    render(conn, "show.html", Trade: l_trade)
  end

  def new(conn, _params) do
    l_trade = %Trade{}
    l_changeset = Trade.changeset(l_trade)
    render(conn, "new.html", trade_record: l_trade, changeset: l_changeset)
  end

  def create(conn, %{"trade" => %{"trade_calculated_id" => trade_calculated_id, "product_id" => product_id, "pool_id" => pool_id, "trade_cost_id" => trade_cost_id, "drawdown_id" => drawdown_id, "date_buy" => date_buy, "year_buy" => year_buy, "month_buy" => month_buy, "day_buy" => day_buy, "date_sell" => date_sell, "year_sell" => year_sell, "month_sell" => month_sell, "day_sell" => day_sell}}) do
    Area91.Repo.insert(%Trade{
        trade_calculated_id: trade_calculated_id,
        product_id: product_id,
        pool_id: pool_id,
        trade_cost_id: trade_cost_id,
        drawdown_id: drawdown_id,
        date_buy: date_buy,
        year_buy: year_buy,
        month_buy: month_buy,
        day_buy: day_buy,
        date_sell: date_sell,
        year_sell: year_sell,
        month_sell: month_sell,
        day_sell: day_sell,
        date_created: Timex.now})
    redirect(conn, to: trade_journal_path(conn, :index))
  end

  def edit(conn, %{"id" => a_trade_id}) do
    {l_trade_id, _} = Integer.parse(a_trade_id)
    l_trade = Area91.Repo.get!(Trade, l_trade_id)
    l_changeset = Trade.changeset(l_trade)
    render(conn, "edit.html", trade_record: l_trade, changeset: l_changeset)
  end

  def update(conn, %{"id" => a_trade_id, "trade" => a_params}) do
    {l_trade_id, _} = Integer.parse(a_trade_id)
    l_trade = Area91.Repo.get!(Trade, l_trade_id)
    l_trade_changeset = Trade.changeset(l_trade, a_params)
    case Area91.Repo.update(l_trade_changeset) do
      {:ok, l_trade} ->
        conn
          |> put_flash(:info, "trade updated successfully.")
          |> redirect(to: trade_journal_path(conn, :index, Area91.Repo.all(Trade)))
      {:error, l_trade_changeset} ->
        conn
          |> put_flash(:info, "Failed to update trade.")
          |> render("edit.html", trade_record: l_trade, changeset: l_trade_changeset)
    end
  end

  def delete(conn, %{"id" => trade_id}) do
    {trade_id, _} = Integer.parse(trade_id)
    l_trade = Area91.Repo.get(Trade, trade_id)
    Area91.Repo.delete(l_trade)
    redirect(conn, to: trade_journal_path(conn, :index))
  end
end
