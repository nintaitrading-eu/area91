defmodule Area91.Repo.Migrations.CreateTable_T_TRADE_COST do
  use Ecto.Migration

  def up do
    # TODO: add T_TRADE_FINANCING table and add a FK link below to it.
    execute "CREATE TABLE T_TRADE_COST
    (
        trade_cost_id bigserial not null,
        commission decimal(18,6) not null,
        tax decimal(18,6) not null,
        is_manually_added boolean not null default 'false',
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_trade_cost_id primary key(trade_cost_id),
        unique(trade_cost_id)
    );"
    execute "COMMENT ON TABLE T_TRADE_COST IS 'Table with costs associated to trading.';"
  end

  def down do
    execute "drop table T_TRADE_COST;"
  end

  def change do
  end
end
