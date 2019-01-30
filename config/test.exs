use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :area91, Area91.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :area91, Area91.Repo,
  adapter: Ecto.Adapters.Postgres,
  #username: "rockwolf",
  username: "postgres",
  #password: "",
  password: "ppwppwppw_987",
  database: "finance",
  #hostname: "se-db0-tst",
  hostname: "localhost",
  username: "postgres",
  port: "5433",
  pool: Ecto.Adapters.SQL.Sandbox
