defmodule Area91.MainController do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
