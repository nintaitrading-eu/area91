defmodule Area91.Repo.Migrations.CreateTable_T_DRAWDOWN do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_DRAWDOWN
    (
        drawdown_id bigserial not null,
        drawdown_current int not null,
        drawdown_max int not null,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_drawdown_id primary key(drawdown_id),
        unique(drawdown_id)
    );"
  end

  def down do
    execute "drop table T_DRAWDOWN;"
  end
 
  def change do
  end
end
