defmodule Area91.Repo.Migrations.CreateTable_T_TRADE_DRAWDOWN_HIST do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_TRADE_DRAWDOWN_HIST
    (
        trade_drawdown_hist_id bigserial not null,
        trade_drawdown_id bigint not null,
        drawdown_current int not null,
        drawdown_max int not null,
        is_deleted boolean not null,
        date_created timestamp with timezone not null,
        date_modified timestamp with timezone not null,
        date_hist_created timestamp with timezone not null,
        date_hist_modified timestamp with timezone not null default current_date,
        constraint pk_trade_drawdown_hist_id primary key(trade_drawdown_id),
        constraint fk_T_TRADE_DRAWDOWN_HIST_trade_drawdown_id foreign key (trade_drawdown_id) references T_TRADE_DRAWDOWN (trade_drawdown_id),
        check(extract(timezone from date_created) = '0'),
        check(extract(timezone from date_modified) = '0'),
        check(extract(timezone from date_hist_created) = '0'),
        check(extract(timezone from date_hist_modified) = '0')
    );"
    execute "COMMENT ON TABLE T_TRADE_DRAWDOWN_HIST IS 'History table for T_TRADE_DRAWDOWN.';"
  end

  def down do
    execute "drop table T_TRADE_DRAWDOWN_HIST;"
  end
 
  def change do
  end
end
