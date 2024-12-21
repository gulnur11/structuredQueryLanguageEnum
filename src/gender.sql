create type Gender as enum('FEMALE', 'MALE');

create table person (
                        id serial primary key ,
                        first_name varchar,
                        last_name varchar,
                        gender Gender
);


insert into person(first_name, last_name, gender)
VALUES('Adilet', 'Egemberdiev','MALE');

create type Country as enum ('KG', 'USA', 'KZ', 'UZ');

alter table person add column country Country;

update person set country = 'KG' where id = 1;

select country  from person;

alter type Country add value 'RU';

drop type Gender cascade;