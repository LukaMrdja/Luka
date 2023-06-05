use master;
drop database if exists muzej;
go
create database muzej;
go
use muzej;

create table izlozba(
sifra int not null primary key identity (1,1),
ime varchar(50),
djela int,
sponzor int
);

create table kustos(
sifra int not null primary key identity (1,1),
ime varchar(50),
izlozba int
);

create table djela(
sifra int not null primary key identity (1,1),
naziv varchar(50)
);

create table sponzor(
sifra int not null primary key identity (1,1),
ime varchar(50)
);

alter table izlozba add foreign key (djela) references djela(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);
alter table kustos add foreign key (izlozba) references izlozba(sifra);