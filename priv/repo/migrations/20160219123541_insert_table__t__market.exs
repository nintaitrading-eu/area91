defmodule Area91.Repo.Migrations.InsertTable_T_MARKET do
  use Ecto.Migration

  def up do
    execute "
      INSERT INTO T_MARKET(code, name, country, date_created)
           VALUES /* GENERAL */
                  ('ams', 'Amsterdam stock exchange AEX25', 'NL', (select now() at time zone 'UTC')),
                  ('ebr', 'Brussels stock exchange BEL20', 'BE', (select now() at time zone 'UTC')),
                  ('etr', 'Frankfurt Xetra DAX30', 'DE', (select now() at time zone 'UTC')),
                  ('epa', 'Paris Stock Exchange CAC40', 'FR', (select now() at time zone 'UTC')),
                  ('other', 'Other', '', (select now() at time zone 'UTC')),
                  ('eli', 'Lisbon Stock Exchange', 'PT', (select now() at time zone 'UTC')),
                  ('lse', 'London Stock Exchange', 'UK', (select now() at time zone 'UTC')),
                  ('ise', 'Irish Stock Exchange (Dublin)', 'IE', (select now() at time zone 'UTC')),
                  ('mil', 'Milan Stock Exchange', 'IT', (select now() at time zone 'UTC')),
                  ('bma', 'Bolsa de Madrid', 'ES', (select now() at time zone 'UTC')),
                  ('vse', 'Vienna Stock Exchange', 'CH', (select now() at time zone 'UTC')),
                  /* CFD's */
                  ('cfd .gold', 'CFD - World Spot Gold', 'US', (select now() at time zone 'UTC')),
                  ('cfd .silver', 'CFD - World Spot Silver', 'US', (select now() at time zone 'UTC')),
                  ('cfd oil', 'CFD - Brent and WTI oil', 'US', (select now() at time zone 'UTC')),
                  ('cfd other non-share', 'CFD - other non-share', '', (select now() at time zone 'UTC')),
                  ('cfd BE', 'CFD - Belgium', 'BE', (select now() at time zone 'UTC')),
                  ('cfd FR', 'CFD - France', 'FR', (select now() at time zone 'UTC')),
                  ('cfd DE', 'CFD - Germany', 'DE', (select now() at time zone 'UTC')),
                  ('cfd UK', 'CFD - United Kingdom', 'UK', (select now() at time zone 'UTC')),
                  ('cfd DK', 'CFD - Denmark', 'DK', (select now() at time zone 'UTC')),
                  ('cfd FI', 'CFD - Finland', 'FI', (select now() at time zone 'UTC')),
                  ('cfd IT', 'CFD - Italy', 'IT', (select now() at time zone 'UTC')),
                  ('cfd NL', 'CFD - Netherlands', 'NL', (select now() at time zone 'UTC')),
                  ('cfd NO', 'CFD - Norway', 'NO', (select now() at time zone 'UTC')),
                  ('cfd PT', 'CFD - Portugal', 'PT', (select now() at time zone 'UTC')),
                  ('cfd SE', 'CFD - Sweden', 'SE', (select now() at time zone 'UTC')),
                  ('cfd CH', 'CFD - Switzerland', 'CH', (select now() at time zone 'UTC')),
                  ('cfd ES', 'CFD - Spain', 'ES', (select now() at time zone 'UTC')),
                  ('cfd other share', 'CFD - other share', '', (select now() at time zone 'UTC')),
                  ('cfd AU', 'CFD - Australia', 'AU', (select now() at time zone 'UTC')),
                  ('cfd AT', 'CFD - Austria', 'AT', (select now() at time zone 'UTC')),
                  ('cfd CN', 'CFD - China', 'CN', (select now() at time zone 'UTC')),
                  ('cfd PL', 'CFD - Poland', 'PL', (select now() at time zone 'UTC')),
                  ('cfd SG', 'CFD - Singapore', 'SG', (select now() at time zone 'UTC')),
                  ('nyse', 'Ney York Stock Exchange', 'US', (select now() at time zone 'UTC')),
                  ('nasdaq', 'Nasdaq', 'US', (select now() at time zone 'UTC')),
                  ('otc bb & pinksheets', 'OTC BB & pinksheets', 'US', (select now() at time zone 'UTC')),
                  ('amex', 'American Exchange', 'US', (select now() at time zone 'UTC')),
                  ('other us', 'Other US markets', 'US', (select now() at time zone 'UTC'));"
  end


  def down do
    execute "delete from T_MARKET;"
  end


  def change do

  end
end
