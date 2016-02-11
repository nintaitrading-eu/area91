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
    ### Finance
    get "/finance/leverage", FinanceLeverageController, :leverage
    #resources "/finance/leverage", AdminAccountController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Area91 do
  #   pipe_through :api
  # end
end
