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
    process_accounts_file(a_file)
    #case File.read(Path.join(l_file.path, l_file.filename)) do
    #  {:ok, l_body} -> process_accounts_file(l_file)
    #  {:error, l_reason} -> IO.puts :stdio, l_reason
    #end
    #IO.inspect a_params
    #conn
    #|> render("index.html")
    redirect(conn, to: import_accounts_path(conn, :index))
  end

defp process_accounts_file(a_file) do
  IO.puts "[TEST: in process_accounts_file]"
  IO.inspect a_file
  IO.puts "[TEST2: in process_accounts_file]"
  File.read!(Path.join(a_file.path, a_file.filename))
  #|> String.splitter("\n", trim: true)
  #|> Enum.filter(&filter_line/1) # TODO: use this to filter comment lines
  |> Enum.each(&add_account/1)
  #|> Enum.join("\n")
end

defp add_account(a_row) do
  # TODO: split a_row, to drop "account "
  # Assemble %Account object, with the data
  # %Account.Repo.insert!
  IO.puts '[TEST: in add_account]'
  IO.inspect(a_row)
  # TODO: How to do this correctly?
  IO.inspect String.splitter(a_row, " ", trim: true)[1] 
  #%Account = {
  #  name = String.splitter(a_row, " ", trim: true)[1]
  #  ...
  #}
end

# TODO: See https://wtfleming.github.io/2016/01/28/geospatial-app-elixir-postgis-phoenix/,
# The trick to write the lines to the repo are below:
# |> Enum.each(&OceanShipLogbooks.Repo.insert!/1)
# So:
# File.Stream!(Path.join(l_file.path, l_file.filename))
# <split lines here>
# <filter comment lines here>
# |> Enum.each(&ImportAccount.Repo.insert!/1)
#
# Now loop over ImportAccount items and convert them to Account items?

end
