defmodule Area91.Repo.Migrations.CreateTable_T_PARAMETER do
  use Ecto.Migration

  def up do
    "CREATE TABLE T_PARAMETER
    (
        parameter_id int not null,
        name varchar(50) not null,
        value varchar(512) not null,
        description varchar(256) not null,
        constraint pk_parameter_id primary key(parameter_id),
        unique(parameter_id)
    );"
  end

  def down do
    "drop table T_PARAMETER;"
  end
 
  def change do
  end
end