defmodule Area91.Repo.Migrations.InsertTable_T_PRODUCT do
  use Ecto.Migration

  def up do
    execute "
      INSERT INTO T_PRODUCT(name, description, product_type_id, currency_id, market_id, product_tick_info_id, date_created)
           values /*** CFD's ***/
                  /* softs */
                  ('CCZ3.cfd', 'US COCOA, US Dollar DecYY', 1, 2, 15, 21, (select now() at time zone 'UTC')),
                  ('CTZ3.cfd', 'US Cotton No.2, US Dollar/100 DecYY', 1, 2, 15, 24, (select now() at time zone 'UTC')),
                  ('KCZ3.cfd', 'US Coffee C, US Dollar/100 DecYY', 1, 2, 15, 22, (select now() at time zone 'UTC')),
                  ('LCCU3.cfd', 'London Cocoa, Pound Sterling SepYY', 1, 2, 15, 8, (select now() at time zone 'UTC')),
                  ('LCCZ3.cfd', 'London Cocoa, Pound Sterling DecYY', 1, 2, 15, 8, (select now() at time zone 'UTC')),
                  ('LEV3.cfd', 'Live Cattle (per 0.01), US Dollar/100 OctYY', 1, 2, 15, 3, (select now() at time zone 'UTC')),
                  ('LRCU3.cfd', 'London Coffee, US Dollar SepYY', 1, 2, 15, 9, (select now() at time zone 'UTC')),
                  ('LRCX3.cfd', 'London Coffee, US Dollar NovYY', 1, 2, 15, 9, (select now() at time zone 'UTC')),
                  ('LSUV3.cfd', 'London Sugar, US Dollar OctYY', 1, 2, 15, 11, (select now() at time zone 'UTC')),
                  ('LSUZ3.cfd', 'London Sugar, US Dollar DecYY', 1, 2, 15, 11, (select now() at time zone 'UTC')),
                  ('LWBX3.cfd', 'London Wheat (per 0.01), Pound Sterling NovYY', 1, 2, 15, 12, (select now() at time zone 'UTC')),
                  ('OJU3.cfd', 'Orange Juice, US Dollar/100 SepYY', 1, 2, 15, 16, (select now() at time zone 'UTC')),
                  ('OJX3.cfd', 'Orange Juice, US Dollar/100 NovYY', 1, 2, 15, 16, (select now() at time zone 'UTC')),
                  ('SBV3.cfd', 'US Sugar No11, US Dollar/100 OctYY', 1, 2, 15, 27, (select now() at time zone 'UTC')),
                  ('ZVU3.cfd', 'US Corn, US Dollar/100 SepYY', 1, 2, 15, 4, (select now() at time zone 'UTC')),
                  ('ZCZ3.cfd', 'US Corn, US Dollar/100 DecYY', 1, 2, 15, 5, (select now() at time zone 'UTC')),
                  ('ZLU3.cfd', 'US Soybean Oil, US Dollar/100 SepYY', 1, 2, 15, 25, (select now() at time zone 'UTC')),
                  ('ZLV3.cfd', 'US Soybean Oil, US Dollar/100 OctYY', 1, 2, 15, 25, (select now() at time zone 'UTC')),
                  ('ZSU3.cfd', 'US Soybeans, US Dollar/100 SepYY', 1, 2, 15, 26, (select now() at time zone 'UTC')),
                  ('ZSX3.cfd', 'US Soybeans, US Dollar/100 NovYY', 1, 2, 15, 26, (select now() at time zone 'UTC')),
                  ('ZWU3.cfd', 'US Wheat, US Dollar/100 SepYY', 1, 2, 15, 28, (select now() at time zone 'UTC')),
                  ('ZWZ3.cfd', 'US Wheat, US Dollar/100 DecYY', 1, 2, 15, 28, (select now() at time zone 'UTC')),
                  ('SBH4.cfd', 'US Sugar No11, US Dollar/100 MarYY', 1, 2, 15, 27, (select now() at time zone 'UTC')),
                  ('LCCH4.cfd', 'London Cocoa Futures, Pound Sterling MarYY', 1, 2, 15, 8, (select now() at time zone 'UTC')),
                  /* oil */
                  ('.BRENT.cfd', 'SPOT Brent Crude Oil, US Dollar/100', 1, 2, 15, 30, (select now() at time zone 'UTC')),
                  ('.WTI.cfd', 'SPOT WTI Light Crude Oil, US Dollar', 1, 2, 15, 35, (select now() at time zone 'UTC')),
                  ('CLV3.cfd', 'WTI Crude Oil, US Dollar OctYY', 1, 2, 15, 29, (select now() at time zone 'UTC')),
                  ('CLX3.cfd', 'WTI Crude Oil, US Dollar NovYY', 1, 2, 15, 29, (select now() at time zone 'UTC')),
                  ('HOU3.cfd', 'Heating Oil, US Dollar NovYY', 1, 2, 15, 6, (select now() at time zone 'UTC')),
                  ('HOV3.cfd', 'Heating Oil, US Dollar OctYY', 1, 2, 15, 6, (select now() at time zone 'UTC')),
                  ('LCOV3.cfd', 'Brent Crude Oil, US Dollar/100 OctYY', 1, 2, 15, 1, (select now() at time zone 'UTC')),
                  ('LCOX3.cfd', 'Brent Crude Oil, US Dollar/100 NovYY', 1, 2, 15, 1, (select now() at time zone 'UTC')),
                  ('LGOU3.cfd', 'London Gas Oil (per 25), US Dollar/100 SepYY', 1, 2, 15, 11, (select now() at time zone 'UTC')),
                  ('LGOV3.cfd', 'London Gas Oil (per 25), US Dollar/100 OctYY', 1, 2, 15, 11, (select now() at time zone 'UTC')),
                  /* metals */
                  ('.GOLD.cfd', 'Spot Gold, US Dollar', 1, 2, 15, 31, (select now() at time zone 'UTC')),
                  ('.MGOLD.cfd ', 'MINI Spot Gold, US Dollar', 1, 2, 15, 32, (select now() at time zone 'UTC')),
                  ('.MSILVER.cfd', 'Spot Mini Silver, US Dollar/100', 1, 2, 15, 33, (select now() at time zone 'UTC')),
                  ('.SILVER.cfd', 'Spot Silver, US Dollar/100', 1, 2, 15, 34, (select now() at time zone 'UTC')),
                  ('GCZ3.cfd', 'Gold, US Dollar DecYY', 1, 2, 15, 5, (select now() at time zone 'UTC')),
                  ('HGU3.cfd ', 'High Grade Copper (per 0.05), US Dollar SepYY', 1, 2, 15, 7, (select now() at time zone 'UTC')),
                  ('HGZ3.cfd', 'High Grade Copper (per 0.05), US Dollar DecYY', 1, 2, 15, 7, (select now() at time zone 'UTC')),
                  ('MINISIU3.cfd', 'Mini Silver, US Dollar/100 SepYY', 1, 2, 15, 14, (select now() at time zone 'UTC')),
                  ('MINISIZ3.cfd ', 'Mini Silver, US Dollar/100 DecYY', 1, 2, 15, 14, (select now() at time zone 'UTC')),
                  ('PAU3.cfd', 'Palladium, US Dollar SepYY', 1, 2, 15, 17, (select now() at time zone 'UTC')),
                  ('PAZ3.cfd', 'Palladium, US Dollar DecYY', 1, 2, 15, 17, (select now() at time zone 'UTC')),
                  ('PLV3.cfd', 'Platinum, US Dollar OctYY', 1, 2, 15, 18, (select now() at time zone 'UTC')),
                  ('SIU3.cfd', 'Silver, US Dollar/100 SepYY', 1, 2, 15, 20, (select now() at time zone 'UTC')),
                  ('SIZ3.cfd', 'Silver, US Dollar/100 DecYY', 1, 2, 15, 20, (select now() at time zone 'UTC')),
                  /* indices */
                  ('.DE30.cfd', 'Germany 30 cash, Euro', 1, 1, 15, null, (select now() at time zone 'UTC')),
                  ('.ES35.cfd', 'Spain 35 cash, Euro', 1, 1, 15, null, (select now() at time zone 'UTC')),
                  ('.F40.cfd ', 'France 40 cash, Euro', 1, 1, 15, null, (select now() at time zone 'UTC')),
                  ('.N25.cfd', 'Netherlands 25 cash, Euro', 1, 1, 15, null, (select now() at time zone 'UTC'));"
  end

  def down do
    execute "delete from T_PRODUCT;"
  end


  def change do

  end
end
