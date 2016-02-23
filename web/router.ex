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
    get "/", MainController, :main
    ### Admin
    get "/admin/account", AdminAccountController, :account
    resources "/admin/account", AdminAccountController
    get "/admin/parameter", AdminParameterController, :parameter
    resources "/admin/parameter", AdminParameterController
    get "/admin/currency", AdminCurrencyController, :currency
    resources "/admin/currency", AdminCurrencyController
    get "/version", VersionController, :version
    get "/about", VersionController, :version
    ### Invoice
    get "/invoice", InvoiceController, :invoice
    resources "/invoice", InvoiceController
    ### Finance
    get "/finance/leverage", FinanceLeverageController, :leverage
    get "/finance/drawdown", FinanceDrawdownController, :drawdown
  end

  # Other scopes may use custom stacks.
  # scope "/api", Area91 do
  #   pipe_through :api
  # end
end
