defmodule Area91.AdminProductController do
  use Phoenix.Controller
  use Timex
  require Logger

  alias Area91.Product
  import Area91.Router.Helpers
  import Ecto.Query

  def index(conn, _params) do
    l_product_records = Area91.Repo.all from p in Product,
      join: m in assoc(p, :market),
      join: pti in assoc(p, :product_tick_info),
      join: c in assoc(p, :currency),
      join: pt in assoc(p, :product_type),
      preload: [market: m, product_tick_info: pti, currency: c, product_type: pt]
    conn
    |> assign(:product_records, Area91.Repo.all(Product))
    |> render("index.html", product_records: l_product_records)
  end

  def show(conn, %{"id" => a_product_id}) do
    {l_product_id, _} = Integer.parse(a_product_id)
    l_product = Area91.Repo.get!(Currency, l_product_id)
    render(conn, "show.html", product: l_product)
  end

  def new(conn, _params) do
    l_product = %Product{}
    l_changeset = Product.changeset(l_product)
    render(conn, "new.html", product: l_product, changeset: l_changeset)
  end

  # TODO: code etc. needs to be replaced with the correct fields for product
  def create(conn, %{"product" => %{"name" => a_name, "description" => a_description}}) do
    Area91.Repo.insert(%Product{name: a_name, description: a_description, date_created: Timex.now})
    redirect(conn, to: admin_product_path(conn, :index))
  end

  def edit(conn, %{"id" => a_product_id}) do
    {l_product_id, _} = Integer.parse(a_product_id)
    l_product = Area91.Repo.get!(Product, l_product_id)
    l_changeset = Product.changeset(l_product)
    render(conn, "edit.html", product: l_product, changeset: l_changeset)
  end

  def update(conn, %{"id" => a_product_id, "product" => a_params}) do
    {l_product_id, _} = Integer.parse(a_product_id)
    l_product = Area91.Repo.get!(Product, l_product_id)
    l_product_changeset = Product.changeset(l_product, a_params)
    case Area91.Repo.update(l_product_changeset) do
      {:ok, _} ->
        conn
          |> put_flash(:info, "Product updated successfully.")
          |> redirect(to: admin_product_path(conn, :index, Area91.Repo.all(Currency)))
      {:error, l_product_changeset} ->
        conn
          |> put_flash(:info, "Failed to update product.")
          |> render("edit.html", product: l_product, changeset: l_product_changeset)
    end
  end

  def delete(conn, %{"id" => product_id}) do
    {product_id, _} = Integer.parse(product_id)
    l_product = Area91.Repo.get(Product, product_id)
    Area91.Repo.delete(l_product)
    redirect(conn, to: admin_product_path(conn, :index))
  end

end
