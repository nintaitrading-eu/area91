defmodule Area91.Repo.Migrations.InsertTable_T_CURRENCY do
  use Ecto.Migration

  def up do
    execute "
      INSERT INTO T_CURRENCY (code, description, date_created)
           VALUES ('EUR', 'Euro', current_date),
                  ('USD', 'United States Dollar', current_date),
                  ('GBP', 'British Pound', current_date),
                  ('CHF', 'Swiss Frank', current_date),
                  ('CAD', 'Canadian Dollar', current_date),
                  ('JPY', 'Japanese Yen', current_date),
                  ('NZD', 'New Zealand Dollar', current_date),
                  ('AUD', 'Australian Dollar', current_date),
                  ('HKD', 'Hong Kong Dollar', current_date),
                  ('DKK', 'Danish Krone', current_date),
                  ('PLN', 'Polish Zloty', current_date),
                  ('MXN', 'Mexican Peso', current_date),
                  ('SEK', 'Swedish Krona', current_date),
                  ('RUB', 'Russian Ruble', current_date);"
  end


  def down do
    execute "delete from t_currency;"
  end


  def change do

  end
end
