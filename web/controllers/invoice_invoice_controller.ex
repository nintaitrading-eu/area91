defmodule Area91.InvoiceInvoiceController do
  use Phoenix.Controller

  plug :action

  def invoice(conn, _params) do
    render conn, "invoice.html"
  end
end
