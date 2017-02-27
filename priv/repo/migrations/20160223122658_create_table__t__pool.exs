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
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_pool_id primary key(pool_id),
        unique(pool_id),
        constraint fk_T_ACCOUNT_account_id foreign key(account_id) references T_ACCOUNT(account_id),
    );"
  end

  def down do
    execute "drop table T_POOL;"
  end

  def change do
  end
end
