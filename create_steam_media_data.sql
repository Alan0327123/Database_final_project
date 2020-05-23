create table steam_media_data(
    steam_appid int,
    header_image varchar(10000),
    screenshoots varchar(50000),
    background varchar(10000),
    movie varchar(10000),
    primary key (steam_appid)
);

load data local infile './steam_media_data.csv'
into table steam_media_data
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

