defmodule Area91.Repo.Migrations.CreateTable_T_TRADE do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_TRADE
    (
        trade_id bigserial not null,
        trade_calculated_id bigserial not null,
        product_id bigserial not null,
        pool_id bigserial not null,
        trade_cost_id bigserial not null,
        drawdown_id bigserial not null,
        date_buy timestamp with time zone,
        year_buy int,
        month_buy int,
        day_buy int,
        date_sell timestamp with time zone,
        year_sell int,
        month_sell int,
        day_sell int,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_trade_id primary key(trade_id),
        unique(trade_id),
        check(extract(timezone from date_buy) = '0') /* Ensure no timezone info is stored. */
    );"
    execute "COMMENT ON TABLE T_TRADE IS 'Contains trade records.';"
    execute "COMMENT ON COLUMN T_TRADE.is_deleted IS 'When a record is deleted. Nothing gets actually removed.';"
  end

  def down do
    execute "drop table T_TRADE;"
  end

  def change do
  end
end
