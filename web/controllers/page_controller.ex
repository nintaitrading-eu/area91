defmodule Area91.PageController do
  use Area91.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
