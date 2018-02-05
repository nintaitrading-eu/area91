defmodule Area91.Repo.Migrations.CreateTable_T_TRADE_CALCULATED do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_TRADE_CALCULTATED
    (
        trade_calculated_id bigserial not null,
        price_buy decimal(18,6) not null,
        price_sell decimal(18,6) not null,
        amount_buy decimal(18,6) not null,
        amount_sell decimal(18,6) not null,
        amount_buy_total decimal(18,6) not null,
        amount_sell_total decimal(18,6) not null,
        risk_input decimal(18,6) not null,
        risk_initial decimal(18,6) not null,
        risk_initial_percent decimal(18,6) not null,
        risk_actual decimal(18,6) not null,
        risk_actual_percent decimal(18,6) not null,
        cost_total decimal(18,6) not null,
        cost_other decimal(18,6) not null,
        stoploss decimal(18,6) not null,
        stoploss_orig decimal(18,6) not null,
        profit_loss decimal(18,6) not null,
        profit_loss_orig decimal(18,6) not null,
        profit_loss_total decimal(18,6) not null,
        profit_loss_total_percent decimal(18,6) not null,
        r_multiple decimal(18,6) not null,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_trade_id primary key(trade_id),
        unique(trade_calculated_id)
    );"
    execute "COMMENT ON TABLE T_TRADE_CALCULTATED IS 'Contains a trade records calculated values.';"
    execute "COMMENT ON COLUMN T_TRADE_CALCULATED.price_buy IS 'Price at time of buying (start of long contract or stop of short contract).';"
    execute "COMMENT ON COLUMN T_TRADE_CALCULATED.price_sell IS 'Price at time of selling (stop of long contract or start of short contract).';"
# TODO: Add descriptions for all the columns.
    execute "COMMENT ON COLUMN T_TRADE_CALCULATED.is_deleted IS 'When a record is deleted. Nothing gets actually removed.';"
  end

  def down do
    execute "drop table T_TRADE_CALCULATED;"
  end

  def change do
  end
end
