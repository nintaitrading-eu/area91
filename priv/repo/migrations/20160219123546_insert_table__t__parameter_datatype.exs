defmodule Area91.Repo.Migrations.InsertTable_T_PARAMETER_DATATYPE do
  use Ecto.Migration

  def up do
    execute "
      insert into t_parameter_datatype(datatype, date_created)
      values ('int', current_date),
             ('string', current_date),
             ('decimal(18,6)', current_date),
             ('double', current_date);"
  end

  def down do
    execute "delete from T_PARAMETER_DATATYPE;"
  end

  def change do
  end
end
