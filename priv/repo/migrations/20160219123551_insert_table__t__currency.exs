defmodule Area91.Repo.Migrations.InsertTable_T_CURRENCY do
  use Ecto.Migration

  def up do
    execute "
      INSERT INTO T_CURRENCY (code, description)
           VALUES ('EUR', 'Euro'),
                  ('USD', 'United States Dollar'),
                  ('GBP', 'British Pound'),
                  ('CHF', 'Swiss Frank'),
                  ('CAD', 'Canadian Dollar'),
                  ('JPY', 'Japanese Yen'),
                  ('NZD', 'New Zealand Dollar'),
                  ('AUD', 'Australian Dollar'),
                  ('HKD', 'Hong Kong Dollar'),
                  ('DKK', 'Danish Krone'),
                  ('PLN', 'Polish Zloty'),
                  ('MXN', 'Mexican Peso'),
                  ('SEK', 'Swedish Krona'),
                  ('RUB', 'Russian Ruble');"
  end


  def down do
    execute "delete from t_currency;"
  end


  def change do

  end
end
