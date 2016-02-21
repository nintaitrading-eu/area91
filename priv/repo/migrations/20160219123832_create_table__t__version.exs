defmodule Area91.Repo.Migrations.CreateTable_T_VERSION do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_VERSION
    (
        version_id int not null,
        version varchar(100) not null default '',
        version_info varchar(100) not null default '',
        application_version varchar(100) not null default '',
        application_version_info varchar(100) not null default '',
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_version_id primary key(version_id)
    );"
  end

  def down do
    execute "drop table T_VERSION;"
  end

  def change do
  end
end
