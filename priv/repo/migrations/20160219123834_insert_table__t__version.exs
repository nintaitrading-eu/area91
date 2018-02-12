defmodule Area91.Repo.Migrations.InsertTable_T_VERSION do
  use Ecto.Migration

  def up do
    execute "insert into t_version values(1, '0.0.1', 'First try!', '0.0.1', 'First try!', (select now() at time zone 'UTC'), (select now() at time zone 'UTC'));"
  end

  def down do
    execute "delete from t_version;"
  end

  def change do

  end
end
