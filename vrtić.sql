use master;
drop database if exists vrtic;
go
create database vrtic;
go
use vrtic;

create table skupina(
sifra int not null primary key identity(1,1),
naziv varchar (50),
odgajateljica int,
djeca int
);

create table odgajateljica(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
strucnasprema int
);

create table djeca(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50)
);

create table strucnasprema(
sifra int not null primary key identity(1,1),
naziv varchar (50)
);

alter table skupina add foreign key (odgajateljica) references odgajateljica(sifra);
alter table skupina add foreign key (djeca) references djeca(sifra);
alter table odgajateljica add foreign key (strucnasprema) references strucnasprema(sifra);