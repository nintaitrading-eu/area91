defmodule Area91.FinanceLeverageController do
  use Phoenix.Controller

  plug :action

  def index(conn, %{"p_contracts" => p_contracts}) do
    {p_contracts, _} = Integer.parse(p_contracts)
    conn
    |> assign(:p_leveraged_contracts, LibCalculatorFinance.General.calculate_leveraged_contracts(p_contracts))
    |> render("index.html", p_leveraged_contracts: p_contracts)
  end
end
