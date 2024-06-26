DO $$
DECLARE
    country_nome RECORD;
    media NUMERIC;
    country_name VARCHAR(1000);
BEGIN
    FOR country_nome IN
        SELECT DISTINCT country FROM vinho
    LOOP
        country_name := country_nome.country;
        IF country_name IS NOT NULL THEN
            EXECUTE '
                SELECT AVG(price) FROM vinho WHERE country = ''' || country_name || ''''
            INTO media;     
            INSERT INTO tabela_resultante (nome_pais, preco_medio) VALUES (country_name, media);
        END IF;
    END LOOP;
END $$;




-- DO $$
-- DECLARE
--     country_nome RECORD;
--     media NUMERIC;
-- BEGIN
--     FOR country_nome IN
--         SELECT DISTINCT country FROM vinho
--     LOOP
--         EXECUTE '
--             SELECT AVG(price) FROM vinho WHERE country = $1'
--         INTO media
--         USING country_nome.country;

--         RAISE NOTICE 'A média do valor do vinho no país % é R$ %', country_nome.country, media;
--     END LOOP;
-- END $$;




-- CREATE TABLE vinho (
--     cd_vinho SERIAL PRIMARY KEY,
--     country VARCHAR(1000),
--     description TEXT,
--     designation VARCHAR(200),
--     points INTEGER,
--     price NUMERIC,
--     province VARCHAR(200),
--     region_1 VARCHAR(200),
--     region_2 VARCHAR(200),
--     taster_name VARCHAR(200),
--     taster_twitter_handle VARCHAR(200),
--     title VARCHAR(200),
--     variety VARCHAR(200),
--     winery VARCHAR(200)
-- );

-- select * from vinho

-- ALTER TABLE vinho DROP COLUMN designation;
-- ALTER TABLE vinho DROP COLUMN province;
-- ALTER TABLE vinho DROP COLUMN region_1;
-- ALTER TABLE vinho DROP COLUMN region_2;
-- ALTER TABLE vinho DROP COLUMN taster_name;
-- ALTER TABLE vinho DROP COLUMN taster_twitter_handle;
-- ALTER TABLE vinho DROP COLUMN title;
-- ALTER TABLE vinho DROP COLUMN variety;
-- ALTER TABLE vinho DROP COLUMN winery;


