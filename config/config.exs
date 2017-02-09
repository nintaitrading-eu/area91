# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :area91, #Area91.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "area91_repo",
  username: "user",
  password: "pass",
  hostname: "localhost",
  ecto_repos: [Area91.Repo]


# Configures the endpoint
config :area91, Area91.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "EWXEdmDV4MkE7WhCZeAcDS7EbsCUlEDIfN+bLoYCpm6YKWJapcVtv2pS1hK4f3AO",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Area91.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

# Configure HAML templates
#config :phoenix, :template_engines,
#  haml: PhoenixHaml.Engine
