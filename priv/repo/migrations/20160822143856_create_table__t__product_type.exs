defmodule Area91.Repo.Migrations.CreateTable_T_PRODUCT_TYPE do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_PRODUCT_TYPE
    (
        product_type_id bigserial not null,
        name varchar(50) not null,
        description varchar(4000) not null,
        is_deleted boolean not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_product_type_id primary key(product_type_id),
        unique(product_type_id)
    );
    COMMENT ON TABLE T_PRODUCT_TYPE IS 'Table with product type, e.g.: cfd, stock, fund, ...'"
  end

  def down do
    execute "drop table T_PRODUCT_TYPE;"
  end

  def change do
  end
end
