defmodule Area91.Repo.Migrations.CreateTableTCommodityType do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_COMMODITY_TYPE
    (
        commodity_type_id serial not null,
        name varchar(50) not null,
        description varchar(256) not null default '',
        is_active int not null default 1,
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_commodity_type_id primary key(commodity_type_id)
    );"
  end

  def down do
    execute "drop table T_COMMODITY_TYPE;"
  end

  def change do
  end
end
