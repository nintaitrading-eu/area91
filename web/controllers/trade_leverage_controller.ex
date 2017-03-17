defmodule Area91.TradeLeverageController do
  use Phoenix.Controller

  import LibCalculatorFinance

  alias Area91.TradeLeverage
  import Area91.Router.Helpers

  plug :action

  def index(conn, %{"trade_leverage" => %{"contracts" => a_contracts}}) do
    {l_contracts, _} = Integer.parse(a_contracts)
    if l_contracts > 0 do 
      l_changeset = TradeLeverage.changeset(%TradeLeverage{contracts: LibCalculatorFinance.General.calculate_leveraged_contracts(l_contracts)})
    else
      l_changeset = TradeLeverage.changeset(%TradeLeverage{})
    end
    conn
    |> render("index.html", changeset: l_changeset)
  end

end
