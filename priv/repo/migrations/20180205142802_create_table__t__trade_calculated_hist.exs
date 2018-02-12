defmodule Area91.Repo.Migrations.CreateTable_T_TRADE_CALCULATED_HIST do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_TRADE_CALCULATED_HIST
    (
        trade_calculated_hist_id bigserial not null,
        trade_calculated_id bigint not null,
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
        date_created timestamp with time zone not null,
        date_modified timestamp with time zone not null,
        date_hist_created timestamp with time zone not null,
        date_hist_modified timestamp with time zone not null default (now() at time zone 'UTC'),
        constraint pk_trade_calculated_hist_id primary key(trade_calculated_hist_id),
        constraint fk_T_TRADE_CALCULATED_HIST_trade_calculated_id foreign key (trade_calculated_id) references T_TRADE_CALCULATED (trade_calculated_id),
        unique(trade_calculated_hist_id),
        check(extract(timezone from date_created) = '0'),
        check(extract(timezone from date_modified) = '0')
    );"
    execute "COMMENT ON TABLE T_TRADE_CALCULATED_HIST IS 'History table for T_TRADE_CALCULATED.';"
  end

  def down do
    execute "drop table T_TRADE_CALCULATED_HIST;"
  end

  def change do
  end
end
