defmodule Area91.Repo.Migrations.CreateTable_T_TRADE_DRAWDOWN do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_TRADE_DRAWDOWN
    (
        trade_drawdown_id bigserial not null,
        drawdown_current int not null,
        drawdown_max int not null,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_trade_drawdown_id primary key(trade_drawdown_id),
        unique(trade_drawdown_id),
	check(extract(timezone from date_created) = '0'),
	check(extract(timezone from date_modified) = '0')
    );"
  end

  def down do
    execute "drop table T_TRADE_DRAWDOWN;"
  end
 
  def change do
  end
end
