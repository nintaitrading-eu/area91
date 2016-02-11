defmodule Area91.MainController do
  use Phoenix.Controller

  plug :action

  def main(conn, _params) do
    render conn, "main.html"
  end
end
