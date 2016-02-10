defmodule Area91.MainController do
  use Phoenix.Controller

  plug :action

  def mainpage(conn, _params) do
    render conn, "main.html"
  end
end
