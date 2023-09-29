create table if not exists genre 
(
id_genre serial primary key,
title varchar(100) not null
);
create table if not exists singer 
(
id_singer serial primary key,
name_singer varchar(60) not null
);
create table if not exists genre_singer
(
id_genre integer references genre(id_genre),
id_singer integer references singer(id_singer)
);
create table if not exists album 
(
id_album serial primary key,
title varchar(100) not null,
year_ date not null
);
create table if not exists singer_album
(
id_singer integer references singer(id_singer),
id_album integer references album(id_album)
);
create table if not exists track 
(
id_track serial primary key,
title varchar(100) not null,
duration time not null,
album integer references album(id_album)
);
create table if not exists collection 
(
id_collection serial primary key,
title varchar(100) not null,
year_ date not null
);
create table if not exists collection_track
(
id_collection integer references collection(id_collection),
id_track integer references track(id_track)
);