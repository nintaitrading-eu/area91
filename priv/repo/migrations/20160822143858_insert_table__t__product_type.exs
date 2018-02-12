defmodule Area91.Repo.Migrations.InsertTable_T_PRODUCT_TYPE do
  use Ecto.Migration

  def up do
    execute "
      insert into t_product_type(name, description, date_created) values('cfd', 'Contracts for difference', (select now() at time zone 'UTC'));
"
  end

  def down do
    execute "delete from T_PRODUCT_TYPE;"
  end


  def change do

  end
end
