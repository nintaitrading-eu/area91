defmodule Area91 do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Start the endpoint when the application starts
      supervisor(Area91.Endpoint, []),
      # Start the Ecto repository
      supervisor(Area91.Repo, []),
      # Here you could define other workers and supervisors as children
      # worker(Area91.Worker, [arg1, arg2, arg3]),
      # worker(Area91.Worker, []),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Area91.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Area91.Endpoint.config_change(changed, removed)
    :ok
  end
end
