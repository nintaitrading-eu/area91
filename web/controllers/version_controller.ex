defmodule Area91.VersionController do
  use Phoenix.Controller

  def index(conn, _params) do
    conn
    |> assign(:version, Area91.Repo.all(Area91.Version))
    |> render("index.html")
  end

end
