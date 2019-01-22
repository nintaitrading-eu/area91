defmodule Area91.Mixfile do
  use Mix.Project

  def project do
    [app: :area91,
     version: "0.0.1",
     elixir: ">= 1.3.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {Area91, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger, :gettext,
                    :phoenix_haml, :phoenix_ecto, :postgrex, :connection,
                    :timex, :timex_ecto, :libcalculatorfinance, :plug]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
     #{:plug, git: "git://github.com/elixir-lang/plug.git", override: True},
     #{:phoenix, github: "phoenixframework/phoenix", override: True},
     {:plug, "~> 1.0", override: True},
     {:phoenix, ">= 1.4.0"},
     {:postgrex, ">= 0.0.0"},
     {:poison, "~> 2.2"},
     {:phoenix_ecto, "~> 3.0", override: True},
     {:phoenix_html, "~> 2.9"},
     {:phoenix_live_reload, "~> 1.2", only: :dev},
     {:phoenix_haml, "~> 0.2"},
     {:calliope, github: "nurugger07/calliope", override: true},
     {:gettext, "~> 0.10"},
     {:cowboy, "~> 2.5"},
     {:plug_cowboy, "~> 2.0.1"},
     {:timex, "~> 3.0"},
     {:timex_ecto, "~> 3.0"},
     #{:libcalculatorfinance, git: "https://github.com/rockwolf/elixir/libcalculatorfinance.git", branch: "libcalculatorfinance-develop", app: False}
     #{:libcalculatorfinance, path: "temp/libcalculatorfinance", app: False}
     {:libcalculatorfinance, "~> 0.0.1"}
    ]
  end

  # Aliases are shortcut or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"]]
  end
end
