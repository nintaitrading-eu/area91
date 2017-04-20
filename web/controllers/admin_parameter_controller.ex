defmodule Area91.AdminParameterController do
  use Phoenix.Controller
  use Timex
  require Logger

  alias Area91.Router
  alias Area91.Parameter
  import Area91.Router.Helpers

  plug :action

  def index(conn, _params) do
    l_parameter_records = Area91.Repo.all(Parameter)
    conn
    |> assign(:parameter_records, Area91.Repo.all(Parameter))
    |> render("index.html", parameter_records: l_parameter_records)
  end

  def show(conn, %{"id" => a_parameter_id}) do
    {l_parameter_id, _} = Integer.parse(a_parameter_id)
    l_parameter = Area91.Repo.get!(Parameter, l_parameter_id)
    render(conn, "show.html", parameter: l_parameter)
  end

  def new(conn, _params) do
    l_parameter = %Parameter{}
    l_changeset = Parameter.changeset(l_parameter)
    render(conn, "new.html", parameter: l_parameter, changeset: l_changeset)
  end

  def create(conn, %{"parameter" => %{"name" => a_code, "value" => a_value, "value_default" => a_value_default, "datatype" => a_datatype, "description" => a_description}}) do
    Area91.Repo.insert(%Parameter{name: a_code, value: a_value, value_default: a_value_default, datatype: a_datatype, description: a_description, date_created: Timex.now})
    redirect(conn, to: admin_parameter_path(conn, :index))
  end

  def edit(conn, %{"id" => a_parameter_id}) do
    {l_parameter_id, _} = Integer.parse(a_parameter_id)
    l_parameter = Area91.Repo.get!(Parameter, l_parameter_id)
    l_changeset = Parameter.changeset(l_parameter)
    render(conn, "edit.html", parameter: l_parameter, changeset: l_changeset)
  end

  def update(conn, %{"id" => a_parameter_id, "parameter" => a_params}) do
    {l_parameter_id, _} = Integer.parse(a_parameter_id)
    l_parameter = Area91.Repo.get!(Parameter, l_parameter_id)
    l_parameter_changeset = Parameter.changeset(l_parameter, a_params)
    case Area91.Repo.update(l_parameter_changeset) do
      {:ok, l_parameter} ->
        conn
          |> put_flash(:info, "Parameter updated successfully.")
          |> redirect(to: admin_parameter_path(conn, :index, Area91.Repo.all(Parameter)))
      {:error, l_parameter_changeset} ->
        conn
          |> put_flash(:info, "Failed to update parameter.")
          |> render("edit.html", parameter: l_parameter, changeset: l_parameter_changeset)
    end
  end

  def delete(conn, %{"id" => parameter_id}) do
    {parameter_id, _} = Integer.parse(parameter_id)
    l_parameter = Area91.Repo.get(Parameter, parameter_id)
    Area91.Repo.delete(l_parameter)
    redirect(conn, to: admin_parameter_path(conn, :index))
  end

end
