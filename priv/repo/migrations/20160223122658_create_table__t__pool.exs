defmodule Area91.Repo.Migrations.CreateTableT_POOL do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_POOL
    (
        pool_id serial not null,
        account_id int not null,
        total decimal(18,6) not null default 0.0,
        invested decimal(18,6) not null default 0.0,
        cash decimal(18,6) not null default 0.0,
        is_active int not null default 1,
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_pool_id primary key(pool_id),
        constraint fk_account_id foreign key(account_id) references T_ACCOUNT(account_id)
    );"
  end

  def down do
    execute "drop table T_POOL;"
  end

  def change do
  end
end
