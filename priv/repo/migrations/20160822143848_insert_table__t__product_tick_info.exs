defmodule Area91.Repo.Migrations.InsertTable_T_PRODUCT_TICK_INFO do
  use Ecto.Migration

  def up do
    execute "
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created)
           VALUES /* commodities (futures) */
                  ('Brent Crude Oil Futures', 1.0, 1.0, 1.0, 100.0, 1.0, 2.0, current_date),
                  ('Carbon Emissions', 1.0, 1.0, 1.0, 250.0, 10.0, 20.0, current_date),
                  ('Cattle Live Futures', 0.01, 1.0, 1.0, 500.0, 2.0, 4.0, current_date),
                  ('Corn Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, current_date),
                  ('Gold Futures', 0.1, 1.0, 1.0, 500.0, 0.5, 1.0, current_date),
                  ('Heating Oil', 0.01, 1.0, 1.0, 100.0, 10.0, 20.0, current_date),
                  ('High Grade Copper', 0.05, 1.0, 1.0, 500.0, 3.0, 6.0, current_date),
                  ('London Cocoa Futures', 1.0, 1.0, 1.0, 1000.0, 5.0, 10.0, current_date),
                  ('London Coffee Futures', 1.0, 1.0, 1.0, 50.0, 5.0, 10.0, current_date),
                  ('London Gas Oil Futures', 25.0, 1.0, 1.0, 250.0, 4.0, 8.0, current_date),
                  ('London Sugar Futures', 0.1, 1.0, 1.0, 500.0, 2.0, 4.0, current_date),
                  ('London Wheat futures', 0.01, 1.0, 1.0, 100.0, 8.0, 16.0, current_date),
                  ('Milling Wheat Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, current_date),
                  ('Mini Silver Futures', 1.0, 1.0, 1.0, 25.0, 1.0, 2.0, current_date),
                  ('Natural Gas', 0.001, 1.0, 1.0, 100.0, 10.0, 20.0, current_date),
                  ('Orange Juice', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, current_date),
                  ('Palladium Futures', 0.1, 1.0, 1.0, 50.0, 5.0, 10.0, current_date),
                  ('Platinum Futures', 0.1, 1.0, 1.0, 50.0, 5.0, 10.0, current_date),
                  ('Rapeseed Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, current_date),
                  ('Silver futures', 0.1, 1.0, 1.0, 50.0, 1.0, 2.0, current_date),
                  ('US Cocoa', 1.0, 1.0, 1.0, 100.0, 3.0, 6.0, current_date),
                  ('US Coffee C', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, current_date),
                  ('US Corn Futures', 0.25, 1.0, 1.0, 1500.0, 8.0, 16.0, current_date),
                  ('US Cotton No. 2', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, current_date),
                  ('US Soybean Oil Futures', 0.01, 1.0, 1.0, 250.0, 8.0, 16.0, current_date),
                  ('US Soybeans Futures', 0.25, 1.0, 1.0, 1000.0, 8.0, 16.0, current_date),
                  ('US Sugar 11', 0.01, 1.0, 1.0, 100.0, 8.0, 16.0, current_date),
                  ('US Wheat futures', 0.25, 1.0, 1.0, 250.0, 8.0, 16.0, current_date),
                  ('WTI Crude Oil Futures', 0.01, 1.0, 1.0, 100.0, 1.0, 2.0, current_date),
                  ('Spot Brent Crude Oil', 1.0, 1.0, 1.0, 100.0, 1.0, 2.0, current_date),
                  ('Spot Gold', 0.1, 1.0, 1.0, 500.0, 0.5, 1.0, current_date),
                  ('Spot Mini Gold', 0.1, 0.1, 1.0, 50.0, 0.5, 1.0, current_date),
                  ('Spot Mini Silver', 0.1, 0.1, 1.0, 25.0, 1.0, 2.0, current_date),
                  ('Spot Silver', 0.1, 1.0, 1.0, 250.0, 1.0, 2.0, current_date),
                  ('Spot WTI Light Crude Oil', 0.01, 1.0, 1.0, 100.0, 1.0, 2.0, current_date);
      /* TODO: add tick info for indices? */
"
  end

  def down do
    execute "delete from T_PRODUCT_TICK_INFO;"
  end


  def change do

  end
end
