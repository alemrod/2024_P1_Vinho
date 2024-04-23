CREATE TABLE vinho (
    cd_vinho SERIAL PRIMARY KEY,
    country VARCHAR(1000),
    description TEXT,
    designation VARCHAR(200),
    points INTEGER,
    price NUMERIC,
    province VARCHAR(200),
    region_1 VARCHAR(200),
    region_2 VARCHAR(200),
    taster_name VARCHAR(200),
    taster_twitter_handle VARCHAR(200),
    title VARCHAR(200),
    variety VARCHAR(200),
    winery VARCHAR(200)
);

select * from vinho

ALTER TABLE vinho DROP COLUMN designation;
ALTER TABLE vinho DROP COLUMN province;
ALTER TABLE vinho DROP COLUMN region_1;
ALTER TABLE vinho DROP COLUMN region_2;
ALTER TABLE vinho DROP COLUMN taster_name;
ALTER TABLE vinho DROP COLUMN taster_twitter_handle;
ALTER TABLE vinho DROP COLUMN title;
ALTER TABLE vinho DROP COLUMN variety;
ALTER TABLE vinho DROP COLUMN winery;