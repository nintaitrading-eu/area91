defmodule Area91.Repo.Migrations.InsertTable_T_MARKET do
  use Ecto.Migration

  def up do
    execute "
      INSERT INTO T_MARKET(code, name, country, date_created)
           VALUES /* GENERAL */
                  ('ams', 'Amsterdam stock exchange AEX25', 'NL', current_date),
                  ('ebr', 'Brussels stock exchange BEL20', 'BE', current_date),
                  ('etr', 'Frankfurt Xetra DAX30', 'DE', current_date),
                  ('epa', 'Paris Stock Exchange CAC40', 'FR', current_date),
                  ('other', 'Other', '', current_date),
                  ('eli', 'Lisbon Stock Exchange', 'PT', current_date),
                  ('lse', 'London Stock Exchange', 'UK', current_date),
                  ('ise', 'Irish Stock Exchange (Dublin)', 'IE', current_date),
                  ('mil', 'Milan Stock Exchange', 'IT', current_date),
                  ('bma', 'Bolsa de Madrid', 'ES', current_date),
                  ('vse', 'Vienna Stock Exchange', 'CH', current_date),
                  /* CFD's */
                  ('cfd .gold', 'CFD - World Spot Gold', 'US', current_date),
                  ('cfd .silver', 'CFD - World Spot Silver', 'US', current_date),
                  ('cfd oil', 'CFD - Brent and WTI oil', 'US', current_date),
                  ('cfd other non-share', 'CFD - other non-share', '', current_date),
                  ('cfd BE', 'CFD - Belgium', 'BE', current_date),
                  ('cfd FR', 'CFD - France', 'FR', current_date),
                  ('cfd DE', 'CFD - Germany', 'DE', current_date),
                  ('cfd UK', 'CFD - United Kingdom', 'UK', current_date),
                  ('cfd DK', 'CFD - Denmark', 'DK', current_date),
                  ('cfd FI', 'CFD - Finland', 'FI', current_date),
                  ('cfd IT', 'CFD - Italy', 'IT', current_date),
                  ('cfd NL', 'CFD - Netherlands', 'NL', current_date),
                  ('cfd NO', 'CFD - Norway', 'NO', current_date),
                  ('cfd PT', 'CFD - Portugal', 'PT', current_date),
                  ('cfd SE', 'CFD - Sweden', 'SE', current_date),
                  ('cfd CH', 'CFD - Switzerland', 'CH', current_date),
                  ('cfd ES', 'CFD - Spain', 'ES', current_date),
                  ('cfd other share', 'CFD - other share', '', current_date),
                  ('cfd AU', 'CFD - Australia', 'AU', current_date),
                  ('cfd AT', 'CFD - Austria', 'AT', current_date),
                  ('cfd CN', 'CFD - China', 'CN', current_date),
                  ('cfd PL', 'CFD - Poland', 'PL', current_date),
                  ('cfd SG', 'CFD - Singapore', 'SG', current_date),
                  ('nyse', 'Ney York Stock Exchange', 'US', current_date),
                  ('nasdaq', 'Nasdaq', 'US', current_date),
                  ('otc bb & pinksheets', 'OTC BB & pinksheets', 'US', current_date),
                  ('amex', 'American Exchange', 'US', current_date),
                  ('other us', 'Other US markets', 'US', current_date);"
  end


  def down do
    execute "delete from T_MARKET;"
  end


  def change do

  end
end
