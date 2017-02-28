defmodule Area91.Repo.Migrations.InsertTable_T_MARKET do
  use Ecto.Migration

  def up do
    execute "
    -- GENERAL
    INSERT INTO T_MARKET(code, name, country, date_created) values('ams', 'Amsterdam stock exchange AEX25', 'NL', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('ebr', 'Brussels stock exchange BEL20', 'BE', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('etr', 'Frankfurt Xetra DAX30', 'DE', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('epa', 'Paris Stock Exchange CAC40', 'FR', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('other', 'Other', '', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('eli', 'Lisbon Stock Exchange', 'PT', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('lse', 'London Stock Exchange', 'UK', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('ise', 'Irish Stock Exchange (Dublin)', 'IE', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('mil', 'Milan Stock Exchange', 'IT', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('bma', 'Bolsa de Madrid', 'ES', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('vse', 'Vienna Stock Exchange', 'CH', current_date);
    -- CFD's
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd .gold', 'CFD - World Spot Gold', 'US', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd .silver', 'CFD - World Spot Silver', 'US', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd oil', 'CFD - Brent and WTI oil', 'US', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd other non-share', 'CFD - other non-share', '', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd BE', 'CFD - Belgium', 'BE', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd FR', 'CFD - France', 'FR', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd DE', 'CFD - Germany', 'DE', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd UK', 'CFD - United Kingdom', 'UK', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd DK', 'CFD - Denmark', 'DK', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd FI', 'CFD - Finland', 'FI', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd IT', 'CFD - Italy', 'IT', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd NL', 'CFD - Netherlands', 'NL', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd NO', 'CFD - Norway', 'NO', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd PT', 'CFD - Portugal', 'PT', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd SE', 'CFD - Sweden', 'SE', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd CH', 'CFD - Switzerland', 'CH', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd ES', 'CFD - Spain', 'ES', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd other share', 'CFD - other share', '', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd AU', 'CFD - Australia', 'AU', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd AT', 'CFD - Austria', 'AT', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd CN', 'CFD - China', 'CN', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd PL', 'CFD - Poland', 'PL', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('cfd SG', 'CFD - Singapore', 'SG', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('nyse', 'Ney York Stock Exchange', 'US', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('nasdaq', 'Nasdaq', 'US', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('otc bb & pinksheets', 'OTC BB & pinksheets', 'US', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('amex', 'American Exchange', 'US', current_date);
    INSERT INTO T_MARKET(code, name, country, date_created) values('other us', 'Other US markets', 'US', current_date);
    "
  end


  def down do
    execute "delete from T_MARKET;"
  end


  def change do

  end
end
