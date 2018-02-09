defmodule Area91.Repo.Migrations.CreateTable_T_TRADE_HIST do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_TRADE_HIST
    (
        trade_hist_id bigserial not null,
        trade_id bigint not null,
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
        date_modified timestamp not null,
        date_hist_created timestamp not null,
        date_hist_modified timestamp not null default current_date,
        constraint pk_trade_hist_id primary key(trade_hist_id),
        constraint fk_T_TRADE_HIST_trade_id foreign key (trade_id) references T_TRADE (trade_id)
    );"
    execute "COMMENT ON TABLE T_TRADE_HIST IS 'History table for T_TRADE.';"
  end

  def down do
    execute "drop table T_TRADE_HIST;"
  end

  def change do
  end
end
