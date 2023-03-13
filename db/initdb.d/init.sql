create database if not exists snippetbox
;

use snippetbox
;

drop table if exists snippets
;

create table snippets (
    id integer not null primary key auto_increment,
    title varchar(100) not null,
    content text not null,
    created datetime not null,
    expires datetime not null
)
;

create index idx_snippets_created on snippets(created)
;

insert into snippets (title, content, created, expires) values (
    "An old silent pond",
    "An old silent pond...\nA frog jumps into the pond,\nsplash! Silent again.\n\n- Matsuo Basho",
    utc_timestamp(),
    date_add(utc_timestamp(), interval 365 day)
)
;

insert into snippets (title, content, created, expires) values (
    "Over the wintry forest",
    "Over the wintry\nforest, winds howl in rage\nwith no leaves to blow.\n\n- Natsume Soseki",
    utc_timestamp(),
    date_add(utc_timestamp(), interval 365 day)
)
;

insert into snippets (title, content, created, expires) values (
    "First autumn morning",
    "First autumn morning\nthe mirror I stare into\nshows my father''s face.\n\n- Murakami Kijo",
    utc_timestamp(),
    date_add(utc_timestamp(), interval 7 day)
)
;

create table sessions (
    token char(43) primary key,
    data blob not null,
    expiry timestamp(6) not null
)
;

create index sessions_expiry_idx on sessions(expiry)
;
