defmodule Area91.Repo.Migrations.InsertTable_T_PARAMETER do
  use Ecto.Migration

  def up do
    execute "
      insert into t_parameter(name, description, value, value_default, datatype, date_created) values('pool_margin', 'Margin to leave of pool.', '0.25', '0.25', current_date);
      insert into t_parameter(name, description, value, value_default, datatype, date_created) values('risk', 'Percent risk of pool we are willing to take initially.', '2.0', '2.0', current_date);
      insert into t_parameter(name, description, value, value_default, datatype, date_created) values('default_currency_from', 'Default index for the currency_from combobox.', '2', '2', current_date);
      insert into t_parameter(name, description, value, value_default, datatype, date_created) values('default_currency_to', 'Default index for the currency_to combobox.', '1', '1', current_date);
"
  end

  def down do
    execute "delete from t_parameter;"
  end


  def change do
  end
end
