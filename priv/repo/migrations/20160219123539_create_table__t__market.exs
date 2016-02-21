defmodule Area91.Repo.Migrations.CreateTable_T_MARKET do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_MARKET
    (
        market_id int not null,
        code varchar(50) not null,
        name varchar(30) not null,
        country char(3) not null,
        is_active int not null default 1,
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_market_id primary key(market_id),
        unique(market_id),
        unique(code)
    );"
  end

  def down do
    execute "drop table T_MARKET;"
  end

  def change do
  end
end
