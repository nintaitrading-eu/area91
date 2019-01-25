defmodule Area91.AdminProductTickInfoController do
  use Phoenix.Controller
  use Timex
  require Logger

  alias Area91.ProductTickInfo
  import Area91.Router.Helpers

  def index(conn, _params) do
    l_product_tick_info_records = Area91.Repo.all(ProductTickInfo)
    conn
    |> assign(:product_tick_info_records, Area91.Repo.all(ProductTickInfo))
    |> render("index.html", product_tick_info_records: l_product_tick_info_records)
  end

  def show(conn, %{"id" => a_product_tick_info_id}) do
    {l_product_tick_info_id, _} = Integer.parse(a_product_tick_info_id)
    l_product_tick_info = Area91.Repo.get!(Currency, l_product_tick_info_id)
    render(conn, "show.html", product_tick_info: l_product_tick_info)
  end

  def new(conn, _params) do
    l_product_tick_info = %ProductTickInfo{}
    l_changeset = ProductTickInfo.changeset(l_product_tick_info)
    render(conn, "new.html", product_tick_info: l_product_tick_info, changeset: l_changeset)
  end

  def create(conn, %{"product_tick_info" => %{"description" => a_description, "tick" => a_tick, "tick_value" => a_tick_value, "order_min" => a_order_min, "order_max" => a_order_max, "margin_day_proc" => a_margin_day_proc, "margin_night_proc" => a_margin_night_proc}}) do
    Area91.Repo.insert(%ProductTickInfo{description: a_description, tick: a_tick, tick_value: a_tick_value, order_min: a_order_min, order_max: a_order_max, margin_day_proc: a_margin_day_proc, margin_night_proc: a_margin_night_proc, date_created: Timex.now})
    redirect(conn, to: admin_product_tick_info_path(conn, :index))
  end

  def edit(conn, %{"id" => a_product_tick_info_id}) do
    {l_product_tick_info_id, _} = Integer.parse(a_product_tick_info_id)
    l_product_tick_info = Area91.Repo.get!(ProductTickInfo, l_product_tick_info_id)
    l_changeset = ProductTickInfo.changeset(l_product_tick_info)
    render(conn, "edit.html", product_tick_info: l_product_tick_info, changeset: l_changeset)
  end

  def update(conn, %{"id" => a_product_tick_info_id, "product_tick_info" => a_params}) do
    {l_product_tick_info_id, _} = Integer.parse(a_product_tick_info_id)
    l_product_tick_info = Area91.Repo.get!(ProductTickInfo, l_product_tick_info_id)
    l_product_tick_info_changeset = ProductTickInfo.changeset(l_product_tick_info, a_params)
    case Area91.Repo.update(l_product_tick_info_changeset) do
      {:ok, _} ->
        conn
          |> put_flash(:info, "ProductTickInfo updated successfully.")
          |> redirect(to: admin_product_tick_info_path(conn, :index, Area91.Repo.all(Currency)))
      {:error, l_product_tick_info_changeset} ->
        conn
          |> put_flash(:info, "Failed to update product_tick_info.")
          |> render("edit.html", product_tick_info: l_product_tick_info, changeset: l_product_tick_info_changeset)
    end
  end

  def delete(conn, %{"id" => product_tick_info_id}) do
    {product_tick_info_id, _} = Integer.parse(product_tick_info_id)
    l_product_tick_info = Area91.Repo.get(ProductTickInfo, product_tick_info_id)
    Area91.Repo.delete(l_product_tick_info)
    redirect(conn, to: admin_product_tick_info_path(conn, :index))
  end

end
