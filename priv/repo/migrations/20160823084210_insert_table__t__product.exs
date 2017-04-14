defmodule Area91.Repo.Migrations.InsertTable_T_PRODUCT do
  use Ecto.Migration

  def up do
    execute "
      INSERT INTO T_PRODUCT(name, description, product_type_id, currency_id, market_id, product_tick_info_id, date_created)
           values /*** CFD's ***/
                  /* softs */
                  ('CCZ3.cfd', 'US COCOA, US Dollar DecYY', 1, 2, 15, 21, current_date),
                  ('CTZ3.cfd', 'US Cotton No.2, US Dollar/100 DecYY', 1, 2, 15, 24, current_date),
                  ('KCZ3.cfd', 'US Coffee C, US Dollar/100 DecYY', 1, 2, 15, 22, current_date),
                  ('LCCU3.cfd', 'London Cocoa, Pound Sterling SepYY', 1, 2, 15, 8, current_date),
                  ('LCCZ3.cfd', 'London Cocoa, Pound Sterling DecYY', 1, 2, 15, 8, current_date),
                  ('LEV3.cfd', 'Live Cattle (per 0.01), US Dollar/100 OctYY', 1, 2, 15, 3, current_date),
                  ('LRCU3.cfd', 'London Coffee, US Dollar SepYY', 1, 2, 15, 9, current_date),
                  ('LRCX3.cfd', 'London Coffee, US Dollar NovYY', 1, 2, 15, 9, current_date),
                  ('LSUV3.cfd', 'London Sugar, US Dollar OctYY', 1, 2, 15, 11, current_date),
                  ('LSUZ3.cfd', 'London Sugar, US Dollar DecYY', 1, 2, 15, 11, current_date),
                  ('LWBX3.cfd', 'London Wheat (per 0.01), Pound Sterling NovYY', 1, 2, 13, current_date),
                  ('OJU3.cfd', 'Orange Juice, US Dollar/100 SepYY', 1, 2, 15, 16, current_date),
                  ('OJX3.cfd', 'Orange Juice, US Dollar/100 NovYY', 1, 2, 15, 16, current_date),
                  ('SBV3.cfd', 'US Sugar No11, US Dollar/100 OctYY', 1, 2, 15, 27, current_date),
                  ('ZVU3.cfd', 'US Corn, US Dollar/100 SepYY', 1, 2, 15, 4, current_date),
                  ('ZCZ3.cfd', 'US Corn, US Dollar/100 DecYY', 1, 2, 5, current_date),
                  ('ZLU3.cfd', 'US Soybean Oil, US Dollar/100 SepYY', 1, 2, 15, 25, current_date),
                  ('ZLV3.cfd', 'US Soybean Oil, US Dollar/100 OctYY', 1, 2, 15, 25, current_date),
                  ('ZSU3.cfd', 'US Soybeans, US Dollar/100 SepYY', 1, 2, 15, 26, current_date),
                  ('ZSX3.cfd', 'US Soybeans, US Dollar/100 NovYY', 1, 2, 15, 26, current_date),
                  ('ZWU3.cfd', 'US Wheat, US Dollar/100 SepYY', 1, 2, 15, 28, current_date),
                  ('ZWZ3.cfd', 'US Wheat, US Dollar/100 DecYY', 1, 2, 15, 28, current_date),
                  ('SBH4.cfd', 'US Sugar No11, US Dollar/100 MarYY', 1, 2, 15, 27, current_date),
                  ('LCCH4.cfd', 'London Cocoa Futures, Pound Sterling MarYY', 2, 15, 8, current_date),
                  /* oil */
                  ('.BRENT.cfd', 'SPOT Brent Crude Oil, US Dollar/100', 1, 2, 15, 30, current_date),
                  ('.WTI.cfd', 'SPOT WTI Light Crude Oil, US Dollar', 1, 2, 15, 35, current_date),
                  ('CLV3.cfd', 'WTI Crude Oil, US Dollar OctYY', 1, 2, 15, 29, current_date),
                  ('CLX3.cfd', 'WTI Crude Oil, US Dollar NovYY', 1, 2, 15, 29, current_date),
                  ('HOU3.cfd', 'Heating Oil, US Dollar NovYY', 1, 2, 15, 6, current_date),
                  ('HOV3.cfd', 'Heating Oil, US Dollar OctYY', 1, 2, 15, 6, current_date),
                  ('LCOV3.cfd', 'Brent Crude Oil, US Dollar/100 OctYY', 1, 2, 15, 1, current_date),
                  ('LCOX3.cfd', 'Brent Crude Oil, US Dollar/100 NovYY', 1, 2, 15, 1, current_date),
                  ('LGOU3.cfd', 'London Gas Oil (per 25), US Dollar/100 SepYY', 1, 2, 15, 11, current_date),
                  ('LGOV3.cfd', 'London Gas Oil (per 25), US Dollar/100 OctYY', 1, 2, 15, 11, current_date),
                  /* metals */
                  ('.GOLD.cfd', 'Spot Gold, US Dollar', 1, 2, 15, 31, current_date),
                  ('.MGOLD.cfd ', 'MINI Spot Gold, US Dollar', 1, 2, 15, 32, current_date),
                  ('.MSILVER.cfd', 'Spot Mini Silver, US Dollar/100', 1, 2, 15, 33, current_date),
                  ('.SILVER.cfd', 'Spot Silver, US Dollar/100', 1, 2, 15, 34, current_date),
                  ('GCZ3.cfd', 'Gold, US Dollar DecYY', 1, 2, 15, 5, current_date),
                  ('HGU3.cfd ', 'High Grade Copper (per 0.05), US Dollar SepYY', 1, 2, 8, current_date),
                  ('HGZ3.cfd', 'High Grade Copper (per 0.05), US Dollar DecYY', 1, 2, 15, 7, current_date),
                  ('MINISIU3.cfd', 'Mini Silver, US Dollar/100 SepYY', 1, 2, 15, 14, current_date),
                  ('MINISIZ3.cfd ', 'Mini Silver, US Dollar/100 DecYY', 1, 2, 15, 14, current_date),
                  ('PAU3.cfd', 'Palladium, US Dollar SepYY', 1, 2, 15, 17, current_date),
                  ('PAZ3.cfd', 'Palladium, US Dollar DecYY', 1, 2, 15, 17, current_date),
                  ('PLV3.cfd', 'Platinum, US Dollar OctYY', 1, 2, 15, 18, current_date),
                  ('SIU3.cfd', 'Silver, US Dollar/100 SepYY', 1, 2, 15, 20, current_date),
                  ('SIZ3.cfd', 'Silver, US Dollar/100 DecYY', 1, 2, 15, 20, current_date),
                  /* indices */
                  ('.DE30.cfd', 'Germany 30 cash, Euro', 1, 1, 15, null, current_date),
                  ('.ES35.cfd', 'Spain 35 cash, Euro', 1, 1, 15, null, current_date),
                  ('.F40.cfd ', 'France 40 cash, Euro', 1, 1, 15, null, current_date),
                  ('.N25.cfd', 'Netherlands 25 cash, Euro', 1, 1, 15, null, current_date);"
  end

  def down do
    execute "delete from T_PRODUCT;"
  end


  def change do

  end
end
