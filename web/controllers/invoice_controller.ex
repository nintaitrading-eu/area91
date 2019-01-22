defmodule Area91.InvoiceController do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def new(conn, _params) do
    render conn, "index.html"
  end
end
