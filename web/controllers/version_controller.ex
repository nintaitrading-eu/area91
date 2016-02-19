defmodule Area91.VersionController do
  use Phoenix.Controller

  plug :action

  def version(conn, _params) do
    render conn, "version.html"
  end
end
