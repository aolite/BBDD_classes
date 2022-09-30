create table vols
(
    num_vol       serial
        constraint vols_pk
            primary key,
    origen        varchar(50),
    desti         varchar(50),
    distancia     double precision,
    hora_sortida  time,
    hora_arribada time
);

alter table vols
    owner to root;

create table avions
(
    num_avio  serial
        constraint avions_pk
            primary key,
    nom       varchar,
    capacitat integer,
    estat     varchar
);

alter table avions
    owner to root;

create table assignats
(
    num_avio integer not null
        constraint assignats_avions_fk
            references avions,
    num_vol  integer not null
        constraint assignats_vols_fk
            references vols,
    data     date    not null,
    constraint assignats_num_avio_pk
        primary key (num_avio, num_vol, data)
);

alter table assignats
    owner to root;

create table pilots
(
    nss  serial
        constraint pilots_pk
            primary key,
    nom  varchar,
    sou  double precision
        constraint check_sou
            check (sou >= (0)::double precision),
    edat integer
        constraint check_edat
            check (edat >= 0)
);

alter table pilots
    owner to root;

create table autoritzats
(
    nss      serial
        constraint autoritzats_pilots_nss_fk
            references pilots,
    num_avio integer not null
        constraint autoritzats_avions_numavio_fk
            references avions,
    constraint autoritzats_pk
        primary key (nss, num_avio)
);

alter table autoritzats
    owner to root;

create table viatgers
(
    dni     varchar not null
        constraint viatgers_pk
            primary key,
    nom     varchar,
    adresa  varchar,
    telefon varchar,
    ciutat  varchar
);

alter table viatgers
    owner to root;

create table bitllets
(
    dni     varchar not null
        constraint bitllets_viatgers_null_fk
            references viatgers,
    num_vol integer not null
        constraint bitllets_vols_null_fk
            references vols,
    data    date    not null,
    constraint bitllets_primary_pk
        primary key (dni, num_vol, data)
);

alter table bitllets
    owner to root;


