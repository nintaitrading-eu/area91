defmodule Area91.Router do
  use Area91.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Area91 do
    pipe_through :browser # Use the default browser stack

    ### Main
    get "/", MainController, :index
    ### Admin
    get "/admin/account", AdminAccountController, :index
    resources "/admin/account", AdminAccountController
    get "/admin/parameter", AdminParameterController, :index
    resources "/admin/parameter", AdminParameterController
    get "/admin/currency", AdminCurrencyController, :index
    resources "/admin/currency", AdminCurrencyController
    get "/admin/market", AdminMarketController, :index
    resources "/admin/market", AdminMarketController
    ### General
    get "/version", VersionController, :index
    get "/about", VersionController, :index
    ### Invoice
    get "/invoice", InvoiceController, :index
    resources "/invoice", InvoiceController
    ### Trade
    get "/trade/journal", TradeJournalController, :index
    get "/trade/financing", TradeFinancingController, :index
    get "/trade/leverage", TradeLeverageController, :index
    get "/trade/drawdown", TradeDrawdownController, :index
    ### Import
    get "/import/accounts", ImportAccountsController, :index
    resources "/import/accounts", ImportAccountsController
    ### Test
    get "/test", TestController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Area91 do
  #   pipe_through :api
  # end
end
