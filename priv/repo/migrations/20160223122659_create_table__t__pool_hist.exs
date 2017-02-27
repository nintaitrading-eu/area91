defmodule Area91.Repo.Migrations.CreateTableT_POOL_HIST do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_POOL_HIST
    (
        pool_hist_id bigserial not null,
        pool_id bigint not null,
        account_id bigint not null,
        total decimal(18,6) not null,
        invested decimal(18,6) not null,
        cash decimal(18,6) not null,
        is_manually_added boolean not null,
        is_deleted boolean not null,
        date_created timestamp not null,
        date_modified timestamp not null,
        date_hist_created timestamp not null,
        date_hist_modified timestamp not null default current_date,
        constraint pk_pool_hist_id primary key(pool_hist_id),
        unique(pool_hist_id),
        constraint fk_T_POOL_pool_id foreign key(pool_id) references T_POOL(pool_id),
    );
    COMMENT ON TABLE T_POOL_HIST IS 'History table for T_POOL.';"
  end

  def down do
    execute "drop table T_POOL_HIST;"
  end

  def change do
  end
end
