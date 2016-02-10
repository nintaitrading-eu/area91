ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Area91.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Area91.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Area91.Repo)

