defmodule Area91.Repo.Migrations.CreateTable_T_MARKET_HIST do
  use Ecto.Migration

  def up do
    execute "CREATE TABLE T_MARKET_HIST
    (
        market_hist_id bigserial not null,
        market_id bigint not null,
        code varchar(50) not null,
        name varchar(50) not null,
        country char(2) not null,
        is_deleted int not null,
        date_created timestamp not null,
        date_modified timestamp not null,
        date_hist_created timestamp not null,
        date_hist_modified timestamp not null default current_date,
        constraint pk_market_hist_id primary key(market_hist_id),
        constraint fk_T_MARKET_HIST_market_id foreign_key (market_id) references T_MARKET (market_id)
    );
    COMMENT ON TABLE T_MARKET_HIST IS 'History table for T_MARKET.';"
  end

  def down do
    execute "drop table T_MARKET_HIST;"
  end

  def change do
  end
end
