defmodule Area91.FinanceLeverageController do
  use Phoenix.Controller

  plug :action

  def leverage(conn, %{"contracts" => contracts}) do
    {contracts, _} = Integer.parse(contracts)
    conn
    |> assign(:p_leveraged_contracts, LibCalculatorFinance.General.calculate_leveraged_contracts(contracts))
    |> render("leverage.html")
  end
end
