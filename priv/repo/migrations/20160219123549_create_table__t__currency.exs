defmodule Area91.Repo.Migrations.CreateTable_T_CURRENCY do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_CURRENCY
    (
        currency_id bigserial not null,
        code varchar(3) not null,
        description varchar(4000) not null,
        is_deleted boolean not null default 'false',
        date_created timestamp with time zone not null,
        date_modified timestamp with time zone not null default (now() at time zone 'UTC'),
        constraint pk_currency_id primary key(currency_id),
        unique(currency_id),
        unique(code),
        check(extract(timezone from date_created) = '0'),
        check(extract(timezone from date_modified) = '0')
    );"
    execute "COMMENT ON TABLE T_CURRENCY IS 'Table that holds ISO currency codes.';"
    execute "COMMENT ON COLUMN T_ACCOUNT.date_created IS 'Date, on which the record was created.';"
    execute "COMMENT ON COLUMN T_ACCOUNT.date_modified IS 'Date, on which the record was last modified.';"
  end

  def down do
    execute "drop table T_CURRENCY;"
  end

  def change do
  end
end
