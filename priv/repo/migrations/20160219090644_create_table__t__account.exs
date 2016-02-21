defmodule Area91.Repo.Migrations.CreateTable_T_ACCOUNT do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_ACCOUNT
    (
        account_id serial not null,
        name varchar(4000) not null,
        description varchar(4000) not null,
        is_active int not null default 1,
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_account_id primary key(account_id)
    );" 
  end

  def down do
   execute "drop table T_ACCOUNTS;" 
  end


  def change do
  end
end
