create table steam_description_data(
    steam_appid int,
    detailed_descripition varchar(10000),
    about_the_game varchar(10000),
    short_description varchar(10000),
    primary key (steam_appid)
);

load data local infile './steam_description_data.csv'
into table steam_description_data
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
