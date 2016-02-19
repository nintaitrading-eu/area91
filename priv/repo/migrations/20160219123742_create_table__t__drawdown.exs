defmodule Area91.Repo.Migrations.CreateTable_T_DRAWDOWN do
  use Ecto.Migration

  def up do
    "CREATE TABLE T_DRAWDOWN
    (
        drawdown_id serial not null,
        drawdown_current int not null default 0,
        drawdown_max int not null default 0,
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_drawdown_id primary key(drawdown_id),
        unique(drawdown_id)
    );"
  end

  def down do
    "drop table T_DRAWDOWN;"
  end
 
  def change do
  end
end
