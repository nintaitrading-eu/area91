defmodule Area91.Repo.Migrations.InsertTable_T_PRODUCT_TICK_INFO do
  use Ecto.Migration

  def up do
    execute "
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created)
           VALUES /* commodities (futures) */
                  ('Brent Crude Oil Futures', 1.0, 1.0, 1.0, 100.0, 1.0, 2.0, (select now() at time zone 'UTC')),
                  ('Carbon Emissions', 1.0, 1.0, 1.0, 250.0, 10.0, 20.0, (select now() at time zone 'UTC')),
                  ('Cattle Live Futures', 0.01, 1.0, 1.0, 500.0, 2.0, 4.0, (select now() at time zone 'UTC')),
                  ('Corn Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, (select now() at time zone 'UTC')),
                  ('Gold Futures', 0.1, 1.0, 1.0, 500.0, 0.5, 1.0, (select now() at time zone 'UTC')),
                  ('Heating Oil', 0.01, 1.0, 1.0, 100.0, 10.0, 20.0, (select now() at time zone 'UTC')),
                  ('High Grade Copper', 0.05, 1.0, 1.0, 500.0, 3.0, 6.0, (select now() at time zone 'UTC')),
                  ('London Cocoa Futures', 1.0, 1.0, 1.0, 1000.0, 5.0, 10.0, (select now() at time zone 'UTC')),
                  ('London Coffee Futures', 1.0, 1.0, 1.0, 50.0, 5.0, 10.0, (select now() at time zone 'UTC')),
                  ('London Gas Oil Futures', 25.0, 1.0, 1.0, 250.0, 4.0, 8.0, (select now() at time zone 'UTC')),
                  ('London Sugar Futures', 0.1, 1.0, 1.0, 500.0, 2.0, 4.0, (select now() at time zone 'UTC')),
                  ('London Wheat futures', 0.01, 1.0, 1.0, 100.0, 8.0, 16.0, (select now() at time zone 'UTC')),
                  ('Milling Wheat Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, (select now() at time zone 'UTC')),
                  ('Mini Silver Futures', 1.0, 1.0, 1.0, 25.0, 1.0, 2.0, (select now() at time zone 'UTC')),
                  ('Natural Gas', 0.001, 1.0, 1.0, 100.0, 10.0, 20.0, (select now() at time zone 'UTC')),
                  ('Orange Juice', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, (select now() at time zone 'UTC')),
                  ('Palladium Futures', 0.1, 1.0, 1.0, 50.0, 5.0, 10.0, (select now() at time zone 'UTC')),
                  ('Platinum Futures', 0.1, 1.0, 1.0, 50.0, 5.0, 10.0, (select now() at time zone 'UTC')),
                  ('Rapeseed Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, (select now() at time zone 'UTC')),
                  ('Silver futures', 0.1, 1.0, 1.0, 50.0, 1.0, 2.0, (select now() at time zone 'UTC')),
                  ('US Cocoa', 1.0, 1.0, 1.0, 100.0, 3.0, 6.0, (select now() at time zone 'UTC')),
                  ('US Coffee C', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, (select now() at time zone 'UTC')),
                  ('US Corn Futures', 0.25, 1.0, 1.0, 1500.0, 8.0, 16.0, (select now() at time zone 'UTC')),
                  ('US Cotton No. 2', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, (select now() at time zone 'UTC')),
                  ('US Soybean Oil Futures', 0.01, 1.0, 1.0, 250.0, 8.0, 16.0, (select now() at time zone 'UTC')),
                  ('US Soybeans Futures', 0.25, 1.0, 1.0, 1000.0, 8.0, 16.0, (select now() at time zone 'UTC')),
                  ('US Sugar 11', 0.01, 1.0, 1.0, 100.0, 8.0, 16.0, (select now() at time zone 'UTC')),
                  ('US Wheat futures', 0.25, 1.0, 1.0, 250.0, 8.0, 16.0, (select now() at time zone 'UTC')),
                  ('WTI Crude Oil Futures', 0.01, 1.0, 1.0, 100.0, 1.0, 2.0, (select now() at time zone 'UTC')),
                  ('Spot Brent Crude Oil', 1.0, 1.0, 1.0, 100.0, 1.0, 2.0, (select now() at time zone 'UTC')),
                  ('Spot Gold', 0.1, 1.0, 1.0, 500.0, 0.5, 1.0, (select now() at time zone 'UTC')),
                  ('Spot Mini Gold', 0.1, 0.1, 1.0, 50.0, 0.5, 1.0, (select now() at time zone 'UTC')),
                  ('Spot Mini Silver', 0.1, 0.1, 1.0, 25.0, 1.0, 2.0, (select now() at time zone 'UTC')),
                  ('Spot Silver', 0.1, 1.0, 1.0, 250.0, 1.0, 2.0, (select now() at time zone 'UTC')),
                  ('Spot WTI Light Crude Oil', 0.01, 1.0, 1.0, 100.0, 1.0, 2.0, (select now() at time zone 'UTC'));
      /* TODO: add tick info for indices? */
"
  end

  def down do
    execute "delete from T_PRODUCT_TICK_INFO;"
  end


  def change do

  end
end
