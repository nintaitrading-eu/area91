defmodule Area91.InvoiceController do
  use Phoenix.Controller

  plug :action

  def invoice(conn, _params) do
    render conn, "invoice.html"
  end

  def new(conn, _params) do
    render conn, "invoice_new.html"
  end
end
