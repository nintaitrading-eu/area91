defmodule Area91.Repo.Migrations.CreateTable_T_ACCOUNT do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_ACCOUNT
    (
        account_hist_id bigserial not null,
        account_id bigint not null
        name varchar(4000) not null,
        description varchar(4000) not null,
        is_deleted boolean not null,
        date_created timestamp not null,
        date_modified timestamp not null,
        date_hist_created timestamp not null,
        date_hist_modified timestamp not null default current_date,
        constraint pk_account_hist_id primary key(account_hist_id)
    );
    COMMENT ON TABLE T_ACCOUNT_HIST IS 'History table for T_ACCOUNT.';" 
  end


  def down do
   execute "drop table T_ACCOUNT_HIST;" 
  end


  def change do
  end
end
