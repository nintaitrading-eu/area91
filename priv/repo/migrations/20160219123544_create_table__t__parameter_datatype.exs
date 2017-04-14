defmodule Area91.Repo.Migrations.CreateTable_T_PARAMETER_DATATYPE do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_PARAMETER_DATATYPE
    (
        parameter_datatype_id bigserial not null,
        datatype varchar(512) not null,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_parameter_datatype_id primary key(parameter_datatype_id),
        unique(parameter_datatype_id)
    );"
    execute "COMMENT ON TABLE T_PARAMETER_DATATYPE IS 'Table that contains datatypes that may be used for the parameters. Please use valid datatypes, so a conversion can succeed.';"
  end

  def down do
    execute "drop table T_PARAMETER_DATATYPE;"
  end

  def change do
  end
end
