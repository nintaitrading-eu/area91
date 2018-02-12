defmodule Area91.Repo.Migrations.CreateTable_T_PRODUCT_HIST do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_PRODUCT_HIST
    (
        product_hist_id bigserial not null,
        product_id bigint not null,
        name varchar(50) not null,
        description varchar(4000) not null,
        product_type_id bigint not null,
        currency_id bigint not null,
        market_id bigint not null,
        product_tick_info_id bigint not null,
        is_deleted boolean not null default 'false',
        date_created timestamp with timezone not null,
        date_modified timestamp with timezone not null,
        date_hist_created timestamp with timezone not null,
        date_hist_modified timestamp with timezone not null default current_date,
        constraint pk_product_hist_id primary key(product_hist_id),
        unique(product_hist_id),
        constraint fk_T_PRODUCT_HIST_product_id foreign key (product_id) references T_PRODUCT (product_id),
        check(extract(timezone from date_created) = '0'),
        check(extract(timezone from date_modified) = '0'),
        check(extract(timezone from date_hist_created) = '0'),
        check(extract(timezone from date_hist_modified) = '0')
    );"
    execute "COMMENT ON TABLE T_PRODUCT_TYPE IS 'History table for T_PRODUCT.'"
  end

  def down do
    execute "drop table T_PRODUCT_HIST;"
  end

  def change do
  end
end
