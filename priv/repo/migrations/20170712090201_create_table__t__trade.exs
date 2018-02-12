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
        shares_buy int not null,
        shares_sell int not null,
        price_buy decimal(18,6) not null,
        price_sell decimal(18,6) not null,
        commission_buy decimal(18,6) not null,
        commission_sell decimal(18,6) not null,
        tax_buy decimal(18,6) not null,
        tax_sell decimal(18,6) not null,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_trade_id primary key(trade_id),
        unique(trade_id),
        check(extract(timezone from date_buy) = '0'), /* Ensure no timezone info is stored. */
        check(extract(timezone from date_sell) = '0'), /* Ensure no timezone info is stored. */
        check(extract(timezone from date_created) = '0'),
        check(extract(timezone from date_modified) = '0')
    );"
    execute "COMMENT ON TABLE T_TRADE IS 'Contains trade records.';"
    execute "COMMENT ON COLUMN T_TRADE.trade_calculated_id IS 'Link to the table with calculations, regarding this trade record.';"
    execute "COMMENT ON COLUMN T_TRADE.product_id IS 'Link to the product we are trading.';"
    execute "COMMENT ON COLUMN T_TRADE.pool_id IS 'Link to the available pool.';"
    execute "COMMENT ON COLUMN T_TRADE.trade_cost_id IS 'Link to the table with trade costs, regarding this trade record.';"
    execute "COMMENT ON COLUMN T_TRADE.drawdown_id IS 'Link to the table with the drawdown, linked to this trade record.';"
    execute "COMMENT ON COLUMN T_TRADE.date_buy IS 'Date on which the product is bought.';"
    execute "COMMENT ON COLUMN T_TRADE.year_buy IS 'Year of date_buy, provided for easy filtering.';"
    execute "COMMENT ON COLUMN T_TRADE.month_buy IS 'Month of date_buy, provided for easy filtering.';"
    execute "COMMENT ON COLUMN T_TRADE.day_buy IS 'Day of date_buy, provided for easy filtering.';"
    execute "COMMENT ON COLUMN T_TRADE.date_sell IS 'Date on which the product is sold.';"
    execute "COMMENT ON COLUMN T_TRADE.year_sell IS 'Year of date_sell, provided for easy filtering.';"
    execute "COMMENT ON COLUMN T_TRADE.month_sell IS 'Month of date_sell, provided for easy filtering.';"
    execute "COMMENT ON COLUMN T_TRADE.day_sell IS 'Day of date_sell, provided for easy filtering.';"
    execute "COMMENT ON COLUMN T_TRADE.price_buy IS 'Price at time of buying (start of long contract or stop of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE.price_sell IS 'Price at time of selling (stop of long contract or start of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE.shares_buy IS 'Shares bought (start of long contract or stop of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE.shares_sell IS 'Shares sold (stop of long contract or start of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE.commission_buy IS 'Commission at time of buying (start of long contract or stop of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE.commission_sell IS 'Commission at time of selling (stop of long contract or start of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE.tax_buy IS 'Tax at time of buying (start of long contract or stop of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE.tax_sell IS 'Tax at time of selling (stop of long contract or start of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE.is_deleted IS 'When a record is deleted. Nothing gets actually removed.';"
  end

  def down do
    execute "drop table T_TRADE;"
  end

  def change do
  end
end
