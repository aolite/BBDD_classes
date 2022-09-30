create table biblioteca
(
    codigo    serial
        constraint biblioteca_pk
            primary key,
    direccion varchar,
    ciudad    varchar,
    telefono  varchar,
    capacidad integer
        constraint check_name
            check (capacidad > 0)
);

alter table biblioteca
    owner to root;

create table libro
(
    isbn            serial
        constraint libro_pk
            primary key,
    titulo          varchar,
    editorial       varchar,
    año_publicacion integer
);

alter table libro
    owner to root;

create table persona
(
    dni            varchar not null
        constraint persona_pk
            primary key,
    nombre         varchar,
    titulacion     varchar,
    direccion      varchar,
    ciudad         varchar,
    año_nacimiento integer
);

alter table persona
    owner to root;

create table autor
(
    isbn integer not null
        constraint "autor_ISBN_fk"
            references libro,
    dni  varchar not null
        constraint "autor_DNI_fk"
            references persona,
    constraint autor_pk
        primary key (isbn, dni)
);

alter table autor
    owner to root;

create table dispone
(
    codigo   integer not null
        constraint dispone_biblioteca_null_fk
            references biblioteca,
    isbn     integer not null
        constraint dispone_libro_null_fk
            references libro,
    cantidad integer
        constraint check_name
            check (cantidad > 0),
    constraint dispone_pk
        primary key (codigo, isbn)
);

alter table dispone
    owner to root;


