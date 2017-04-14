defmodule Area91.Repo.Migrations.CreateTable_T_CURRENCY do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_CURRENCY
    (
        currency_id bigserial not null,
        code varchar(3) not null,
        description varchar(4000) not null,
        is_deleted boolean not null default 'false',
        constraint pk_currency_id primary key(currency_id),
        unique(currency_id)
    );"
    execute "COMMENT ON TABLE T_CURRENCY IS 'Table that holds ISO currency codes.';"
  end

  def down do
    execute "drop table T_CURRENCY;"
  end

  def change do
  end
end
