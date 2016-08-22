defmodule Area91.AdminParameterController do
  use Phoenix.Controller

  alias Area91.Router
  import Area91.Router.Helpers

  plug :action

  def parameter(conn, _params) do
    conn
    |> assign(:parameters, Area91.Repo.all(Area91.Parameter))
    |> render("parameter.html")
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def create(conn, %{"parameter" => %{"name" => name, "description" => description}}) do
    l_parameter = %Area91.Parameter{name: name, description: description}
    Area91.Repo.insert(l_parameter)
    redirect(conn, to: admin_parameter_path(conn, :overview))
  end

end
