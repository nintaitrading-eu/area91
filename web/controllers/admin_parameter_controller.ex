defmodule Area91.AdminParameterController do
  use Phoenix.Controller

  plug :action

  def parameter(conn, _params) do
    render conn, "parameter.html"
  end
end
