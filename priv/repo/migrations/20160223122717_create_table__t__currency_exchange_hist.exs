defmodule Area91.Repo.Migrations.CreateTable_T_CURRENCY_EXCHANGE_HIST do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_CURRENCY_EXCHANGE_HIST
    (
        currency_exchange_hist_id bigserial not null,
        currency_exchange_id bigint not null,
        currency_from_id bigint not null,
        currency_to_id bigint not null,
        exchange_rate decimal(18,6) not null,
        date_created timestamp with time zone not null,
        date_modified timestamp with time zone not null,
        date_hist_created timestamp with time zone not null,
        date_hist_modified timestamp with time zone not null default (now() at time zone 'UTC'),
        constraint pk_currency_exchange_hist_id primary key(currency_exchange_hist_id),
        constraint fk_T_CURRENCY_EXCHANGE_HIST_currency_exchange_id foreign key(currency_exchange_id) references T_CURRENCY_EXCHANGE(currency_exchange_id),
        check(extract(timezone from date_created) = '0'),
        check(extract(timezone from date_modified) = '0'),
        check(extract(timezone from date_hist_created) = '0'),
        check(extract(timezone from date_hist_modified) = '0')
    );"
    execute "COMMENT ON TABLE T_CURRENCY_EXCHANGE_HIST IS 'History table for T_CURRENCY_EXCHANGE.'"
  end

  def down do
    execute "drop table T_CURRENCY_EXCHANGE_HIST;"
  end

  def change do
  end
end
