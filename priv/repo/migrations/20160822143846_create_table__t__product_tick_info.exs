defmodule Area91.Repo.Migrations.CreateTable_T_PRODUCT_TICK_INFO do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_PRODUCT_TICK_INFO
    (
        product_tick_info_id bigserial not null,
        description varchar(4000) not null,
        tick decimal(18,6) not null,
        tick_value decimal(18,6) not null,
        order_min decimal(18,6) not null,
        order_max decimal(18,6) not null,
        margin_day_proc decimal(18,6) not null,
        margin_night_proc decimal(18,6) not null,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_product_tick_info_id primary key(product_tick_info_id),
        unique(product_tick_info_id)
    );"
    execute "COMMENT ON TABLE T_PRODUCT_TICK_INFO IS 'Table with tick value information on contracts. Only belongs to cfd products and futures contracts.';"
  end

  def down do
    execute "drop table T_PRODUCT_TICK_INFO;"
  end

  def change do
  end
end
