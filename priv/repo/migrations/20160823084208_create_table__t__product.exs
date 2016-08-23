defmodule Area91.Repo.Migrations.CreateTableTProduct do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_PRODUCT
    (
        product_id serial not null,
        name varchar(50) not null,
        description varchar(256) not null default '',
        product_type_id int not null default 1,
        currency_id int not null default 1,
        market_id int not null default -1,
        is_active int not null default 1,
        date_created timestamp not null default '1900-01-01',
        date_modified timestamp not null default '1900-01-01',
        constraint pk_product_id primary key(product_id),
        constraint fk_currency_id foreign key(currency_id) references T_CURRENCY(currency_id),
        constraint fk_market_id foreign key(market_id) references T_MARKET(market_id),
        constraint fk_product_type_id foreign key(product_type_id) references T_PRODUCT_TYPE(product_type_id)
    );"
  end

  def down do
    execute "drop table T_PRODUCT;"
  end

  def change do
  end
end
