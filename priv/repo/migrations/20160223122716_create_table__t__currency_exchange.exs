defmodule Area91.Repo.Migrations.CreateTable_T_CURRENCY_EXCHANGE do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_CURRENCY_EXCHANGE
    (
        currency_exchange_id serial not null,
        currency_from_id int not null default -1,
        currency_to_id int not null default -1,
        exchange_rate decimal(18,6) not null default 0.0,
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_currency_exchange_id primary key(currency_exchange_id),
        constraint fk_currency_from_id foreign key(currency_from_id) references T_CURRENCY(currency_id),
        constraint fk_currency_to_id foreign key(currency_to_id) references T_CURRENCY(currency_id)
    );" 
  end

  def down do
    execute "drop table T_CURRENCY_EXCHANGE;"
  end

  def change do
  end
end
