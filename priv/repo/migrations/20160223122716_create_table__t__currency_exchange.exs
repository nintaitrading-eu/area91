defmodule Area91.Repo.Migrations.CreateTable_T_CURRENCY_EXCHANGE do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_CURRENCY_EXCHANGE
    (
        currency_exchange_id serial not null,
        currency_from_id int not null,
        currency_to_id int not null,
        exchange_rate decimal(18,6) not null,
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_currency_exchange_id primary key(currency_exchange_id),
        constraint fk_T_CURRENCY_EXCHANGE_currency_from_id foreign key(currency_from_id) references T_CURRENCY(currency_from_id),
        constraint fk_T_CURRENCY_EXCHANGE_currency_to_id foreign key(currency_to_id) references T_CURRENCY(currency_to_id)
    );"
    execute "COMMENT ON TABLE T_CURRENCY IS 'Table that holds the currency exchange rates."
  end

  def down do
    execute "drop table T_CURRENCY_EXCHANGE;"
  end

  def change do
  end
end
