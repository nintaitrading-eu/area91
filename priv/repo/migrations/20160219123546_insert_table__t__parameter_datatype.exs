defmodule Area91.Repo.Migrations.InsertTable_T_PARAMETER_DATATYPE do
  use Ecto.Migration

  def up do
    execute "
      begin;
      insert into t_parameter_datatype(datatype, date_created) values('int', current_date);
      insert into t_parameter_datatype(datatype, date_created) values('string', current_date);
      insert into t_parameter_datatype(datatype, date_created) values('decimal(18,6)', current_date);
      insert into t_parameter_datatype(datatype, date_created) values('double', current_date);
      commit;
"
  end

  def down do
    execute "delete from T_PARAMETER_DATATYPE;"
  end

  def change do
  end
end
