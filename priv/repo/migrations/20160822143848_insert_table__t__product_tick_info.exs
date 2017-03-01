defmodule Area91.Repo.Migrations.InsertTable_T_PRODUCT_TICK_INFO do
  use Ecto.Migration

  def up do
    execute "
      begin;
      -- commodities (futures)
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Brent Crude Oil Futures', 1.0, 1.0, 1.0, 100.0, 1.0, 2.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Carbon Emissions', 1.0, 1.0, 1.0, 250.0, 10.0, 20.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Cattle Live Futures', 0.01, 1.0, 1.0, 500.0, 2.0, 4.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Corn Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Gold Futures', 0.1, 1.0, 1.0, 500.0, 0.5, 1.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Heating Oil', 0.01, 1.0, 1.0, 100.0, 10.0, 20.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('High Grade Copper', 16, 2, 0.05, 1.0, 1.0, 500.0, 3.0, 6.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('London Cocoa Futures', 1.0, 1.0, 1.0, 1000.0, 5.0, 10.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('London Coffee Futures', 1.0, 1.0, 1.0, 50.0, 5.0, 10.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('London Gas Oil Futures', 25.0, 1.0, 1.0, 250.0, 4.0, 8.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('London Sugar Futures', 0.1, 1.0, 1.0, 500.0, 2.0, 4.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('London Wheat futures', 0.01, 1.0, 1.0, 100.0, 8.0, 16.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Milling Wheat Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Mini Silver Futures', 1.0, 1.0, 1.0, 25.0, 1.0, 2.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Natural Gas', 0.001, 1.0, 1.0, 100.0, 10.0, 20.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Orange Juice', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Palladium Futures', 0.1, 1.0, 1.0, 50.0, 5.0, 10.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Platinum Futures', 0.1, 1.0, 1.0, 50.0, 5.0, 10.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Rapeseed Futures', 1.0, 1.0, 1.0, 1000.0, 3.0, 6.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Silver futures', 0.1, 1.0, 1.0, 50.0, 1.0, 2.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('US Cocoa', 1.0, 1.0, 1.0, 100.0, 3.0, 6.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('US Coffee C', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('US Corn Futures', 0.25, 1.0, 1.0, 1500.0, 8.0, 16.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('US Cotton No. 2', 0.01, 1.0, 1.0, 100.0, 3.0, 6.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('US Soybean Oil Futures', 0.01, 1.0, 1.0, 250.0, 8.0, 16.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('US Soybeans Futures', 0.25, 1.0, 1.0, 1000.0, 8.0, 16.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('US Sugar 11', 0.01, 1.0, 1.0, 100.0, 8.0, 16.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('US Wheat futures', 0.25, 1.0, 1.0, 250.0, 8.0, 16.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('WTI Crude Oil Futures', 0.01, 1.0, 1.0, 100.0, 1.0, 2.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Spot Brent Crude Oil', 1.0, 1.0, 1.0, 100.0, 1.0, 2.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Spot Gold', 0.1, 1.0, 1.0, 500.0, 0.5, 1.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Spot Mini Gold', 0.1, 0.1, 1.0, 50.0, 0.5, 1.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Spot Mini Silver', 0.1, 0.1, 1.0, 25.0, 1.0, 2.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Spot Silver', 0.1, 1.0, 1.0, 250.0, 1.0, 2.0, current_date);
      INSERT INTO T_PRODUCT_TICK_INFO(description, tick, tick_value, order_min, order_max, margin_day_proc, margin_night_proc, date_created) VALUES('Spot WTI Light Crude Oil', 0.01, 1.0, 1.0, 100.0, 1.0, 2.0, current_date);
      commit;
"
  end

  def down do
    execute "delete from T_PRODUCT_TICK_INFO;"
  end


  def change do

  end
end
