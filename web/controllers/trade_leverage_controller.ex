defmodule Area91.TradeLeverageController do
  use Phoenix.Controller

  import LibCalculatorFinance

  alias Area91.TradeLeverage
  import Area91.Router.Helpers

  plug :action

  #def index(conn, %{"trade_leverage" => %{"contracts" => a_contracts, "contracts_leverage" => a_contracts_leverage}}) do
  def index(conn, a_params) do
    if a_params == %{} do
      l_contracts = 1
      l_contracts_leverage = 0
    else
      {l_contracts, _} = Integer.parse(a_params["trade_leverage"]["contracts"])
      {l_contracts_leverage, _} = Integer.parse(a_params["trade_leverage"]["contracts_leverage"])
    end
    if l_contracts > 0 do
      #TODO: figure out why the output remains a double (e.g. 1.0), even with Float.ceil...
      l_changeset = TradeLeverage.changeset(%TradeLeverage{contracts: l_contracts, contracts_leverage: Float.ceil(LibCalculatorFinance.General.calculate_leveraged_contracts(l_contracts))})
    else
      l_changeset = TradeLeverage.changeset(%TradeLeverage{})
    end
    conn
    |> render("index.html", changeset: l_changeset)
  end

end
