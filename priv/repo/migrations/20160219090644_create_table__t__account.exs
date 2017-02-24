defmodule Area91.Repo.Migrations.CreateTable_T_ACCOUNT do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_ACCOUNT
    (
        account_id bigserial not null,
        name varchar(4000) not null,
        description varchar(4000) not null,
        is_deleted boolean not null default 'false' /* When a record is deleted. Nothing gets actually removed. */,
        date_created timestamp not null /* Date, on which the record was created. */,
        date_modified timestamp not null default current_date /* Date, on which the record was last modified. */,
        constraint pk_account_id primary key(account_id),
        unique(name)
    );
    COMMENT ON TABLE T_ACCOUNT IS 'Contains records with account names, as used in ledger. Accounts can be added manually or imported from the ledger accounts file.';
    COMMENT ON COLUMN T_ACCOUNT.is_deleted IS 'When a record is deleted. Nothing gets actually removed.';
    COMMENT ON COLUMN T_ACCOUNT.date_created IS 'Date, on which the record was created.';
    COMMENT ON COLUMN T_ACCOUNT.date_modified IS 'Date, on which the record was last modified.';" 
  end

  def down do
   execute "drop table T_ACCOUNT;" 
  end


  def change do
  end
end
