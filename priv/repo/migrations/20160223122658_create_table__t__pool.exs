defmodule Area91.Repo.Migrations.CreateTableT_POOL do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_POOL
    (
        pool_id bigserial not null,
        account_id bigint not null,
        total decimal(18,6) not null,
        invested decimal(18,6) not null,
        cash decimal(18,6) not null,
        is_manually_added boolean not null default 'false',
        is_deleted boolean not null default 'false',
        date_created timestamp with timezone not null,
        date_modified timestamp with timezone not null default (select now() in time zone 'UTC'),
        constraint pk_pool_id primary key(pool_id),
        unique(pool_id),
        constraint fk_T_POOL_pool_id foreign key(pool_id) references T_POOL(pool_id),
        check(extract(timezone from date_created) = '0'),
        check(extract(timezone from date_modified) = '0')
    );"
  end

  def down do
    execute "drop table T_POOL;"
  end

  def change do
  end
end
