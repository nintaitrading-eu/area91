defmodule Area91.Repo.Migrations.CreateTable_T_CURRENCY do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_CURRENCY
    (
        currency_id int not null,
        code varchar(3) not null default '',
        description varchar(256) not null default '',
        constraint pk_currency_id primary key(currency_id),
        unique(currency_id)
    );"
  end

  def down do
    execute "drop table T_CURRENCY;"
  end

  def change do
  end
end
