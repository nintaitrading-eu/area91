defmodule Area91.Repo.Migrations.CreateTable_T_PARAMETER do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_PARAMETER
    (
        parameter_id bigserial not null,
        name varchar(50) not null,
        value varchar(512) not null,
        value_default varchar(512) not null,
        description varchar(4000) not null,
        datatype varchar(50) not null,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_parameter_id primary key(parameter_id),
        unique(parameter_id),
        unique(name),
	check(extract(timezone from date_created) = '0'),
	check(extract(timezone from date_modified) = '0')
    );"
    execute "COMMENT ON TABLE T_PARAMETER IS 'Table that contains global parameters, with default values and descriptions.';"
    execute "COMMENT ON COLUMN T_PARAMETER.datatype IS 'Note: add check constraint: integer, string, decimal(18,6)';"
  end

  def down do
    execute "drop table T_PARAMETER;"
  end

  def change do
  end
end
