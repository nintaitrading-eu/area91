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

  ##########################################
  # Web backend
  ##########################################
  scope "/", Area91 do
    pipe_through :browser # Use the default browser stack

    ### Main
    get "/", MainController, :index
    ### Admin
    resources "/admin/account", AdminAccountController
    resources "/admin/parameter", AdminParameterController
    resources "/admin/currency", AdminCurrencyController
    resources "/admin/market", AdminMarketController
    resources "/admin/product", AdminProductController
    resources "/admin/product_tick_info", AdminProductTickInfoController
    ### General
    get "/version", VersionController, :index
    get "/about", VersionController, :index
    ### Invoice
    resources "/invoice", InvoiceController
    ### Trade
    resources "/trade/journal", TradeJournalController
    get "/trade/financing", TradeFinancingController, :index
    resources "/trade/leverage", TradeLeverageController, only: [:index, :show, :create]
    get "/trade/drawdown", TradeDrawdownController, :index
    ### Import
    resources "/import/accounts", ImportAccountsController
    ### Test
    get "/test", TestController, :index
  end

  ##########################################
  # API backend
  ##########################################
  scope "/api/v1", Area91 do
    pipe_through :api
    #resources "/admin/currency", AdminCurrencyController
    get "/admin/currency", Api.AdminCurrencyController, :index
  end
end
