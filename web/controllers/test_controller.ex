defmodule Area91.TestController do
  use Phoenix.Controller

  def index(conn, _params) do
    conn
    |> assign(:p_testing, 'I am testing HAML templates.')
    |> render("index.html")
  end

end
