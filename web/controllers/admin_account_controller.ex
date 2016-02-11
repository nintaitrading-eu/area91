defmodule Area91.AdminAccountController do
  use Phoenix.Controller

  plug :action

  def account(conn, _params) do
    render conn, "account.html"
  end
end
