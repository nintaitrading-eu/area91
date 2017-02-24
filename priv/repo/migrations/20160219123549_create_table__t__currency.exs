defmodule Area91.Repo.Migrations.CreateTable_T_CURRENCY do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_CURRENCY
    (
        currency_id bigserial not null,
        code varchar(3) not null /* ISO currency code, 3 characters. */,
        description varchar(4000) not null,
        is_deleted boolean not null default 'false',
        constraint pk_currency_id primary key(currency_id),
        unique(currency_id)
    );
    COMMENT ON TABLE T_CURRENCY IS 'Contains a list of currency symbols.';
    COMMENT ON COLUMN T_CURRENCY.CODE IS 'ISO currency code, 3 characters."
  end

  def down do
    execute "drop table T_CURRENCY;"
  end

  def change do
  end
end
