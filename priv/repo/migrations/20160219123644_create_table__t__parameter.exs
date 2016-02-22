defmodule Area91.Repo.Migrations.CreateTable_T_PARAMETER do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_PARAMETER
    (
        parameter_id int not null,
        name varchar(50) not null,
        value varchar(512) not null,
        description varchar(256) not null,
        is_active int not null default 1,
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_parameter_id primary key(parameter_id),
        unique(parameter_id)
    );"
  end

  def down do
    execute "drop table T_PARAMETER;"
  end
 
  def change do
  end
end
