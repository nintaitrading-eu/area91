defmodule Area91.TradeLeverageController do
  use Phoenix.Controller

  import LibCalculatorFinance

  alias Area91.TradeLeverage

  def index(conn, a_params) do
    l_contracts =
      if a_params == %{} do
    	1
      else
	Integer.parse(a_params["trade_leverage"]["contracts"])
      end
    l_changeset = if l_contracts > 0 do
      #TODO: figure out why the output remains a double (e.g. 1.0), even with Float.ceil...
      TradeLeverage.changeset(%TradeLeverage{contracts: l_contracts, contracts_leverage: Float.ceil(LibCalculatorFinance.General.calculate_leveraged_contracts(l_contracts))})
    else
      TradeLeverage.changeset(%TradeLeverage{})
    end
    conn
    |> render("index.html", changeset: l_changeset)
  end

end
