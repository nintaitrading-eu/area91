defmodule Area91.ImportAccountsController do
  use Phoenix.Controller

  alias Area91.ImportAccounts
  import Area91.Router.Helpers

  plug :action

  def index(conn, a_params) do
    # TODO: Show data about accounts?
    l_changeset = ImportAccounts.changeset(%ImportAccounts{})
    conn
    |> render("new.html", changeset: l_changeset)
  end

  def edit(conn, a_params) do
    l_changeset = ImportAccounts.changeset(%ImportAccounts{})
    conn
    |> render("new.html", changeset: l_changeset)
  end

#%{"_csrf_token" => "Bi8aGiNyBUA2CHIQCyMDKwk/Gw8KAAAAiCUCpCjpLZBsmhOhfwhGyA==",
#  "_utf8" => "blabla",
#  "import_accounts" => %{"import_file" => %Plug.Upload{content_type: "application/octet-stream",
#     filename: "2014.dat",
#     path: "C:\\Users\\AD78F~1.NAG\\AppData\\Local\\Temp/plug-1489/multipart-51791-141000-4"}}}
  def create(conn, %{"import_accounts" => %{"file" => a_file}}) do
  #def create(conn, a_params) do
    l_file = a_file
    IO.inspect l_file.path
    IO.inspect l_file.filename
    IO.inspect Path.join(l_file.path, l_file.filename)
    case File.read(Path.join(l_file.path, l_file.filename)) do
      {:ok, l_body} -> IO.inspect l_body
      {:error, l_reason} -> IO.puts :stdio, l_reason
    end
    #IO.inspect a_params
    #conn
    #|> render("index.html")
    redirect(conn, to: import_accounts_path(conn, :index))
  end

end
