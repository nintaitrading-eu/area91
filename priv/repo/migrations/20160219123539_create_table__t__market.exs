defmodule Area91.Repo.Migrations.CreateTable_T_MARKET do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_MARKET
    (
        market_id bigserial not null,
        code varchar(50) not null /* A unique code representation to use in applications. e.g.: EBR */,
        name varchar(50) not null,
        country char(3) not null /* ISO country code, 3 characters. */,
        is_deleted int not null default 'false',
        date_created timestamp not null,
        date_modified timestamp not null default current_date,
        constraint pk_market_id primary key(market_id),
        unique(market_id),
        unique(code)
    );
    COMMENT ON TABLE T_MARKET IS 'Contains a list of markets you can trade. E.g.: ''cfd .gold'', ''ebr''';
    COMMENT ON COLUMN T_MARKET.code IS 'A unique short code representation to use in applications. e.g.: EBR';
    COMMENT ON COLUMN T_MARKET.country IS 'Iso country code, 3 characters.';
    COMMENT ON COLUMN T_MARKET.is_deleted IS 'When a record is deleted. Nothing gets actually removed.';"
  end

  def down do
    execute "drop table T_MARKET;"
  end

  def change do
  end
end
