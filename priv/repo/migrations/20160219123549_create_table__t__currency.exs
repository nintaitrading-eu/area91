defmodule Area91.Repo.Migrations.CreateTable_T_CURRENCY_EXCHANGE do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_CURRENCY_EXCHANGE
    (
        currency_exchange_id bigserial not null,
        currency_from_id bigint not null,
        currency_to_id bigint not null,
        exchange_rate decimal(18,6) not null,
        is_deleted boolean not null default 'false',
        constraint pk_currency_id primary key(currency_exchange_id),
        unique(currency_exchange_id),
        constraint fk_T_CURRENCY_EXCHANGE_currency_from_id foreign key (currency_from_id) references (T_
    );
    COMMENT ON TABLE T_CURRENCY_EXCHANGE IS 'Table that hold exchange-rates.';"
  end

  def down do
    execute "drop table T_CURRENCY_EXCHANGE;"
  end

  def change do
  end
end
