defmodule Area91.Repo.Migrations.InsertTable_T_PARAMETER_DATATYPE do
  use Ecto.Migration

  def up do
    execute "
      insert into t_parameter_datatype(datatype, date_created)
      values ('int', (select now() at time zone 'UTC')),
             ('string', (select now() at time zone 'UTC')),
             ('decimal(18,6)', (select now() at time zone 'UTC')),
             ('double', (select now() at time zone 'UTC'));"
  end

  def down do
    execute "delete from T_PARAMETER_DATATYPE;"
  end

  def change do
  end
end
