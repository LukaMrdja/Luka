use master;
drop database if exists salon;
go
create database salon;
go
use salon;

create table djelatnik(
sifra int not null primary key identity(1,1),
ime varchar (50),
prezime varchar (50),
adresa varchar (50)
);

create table usluga(
sifra int not null primary key identity(1,1),
naziv varchar (50),
trajanje int,
cijena int
);

create table korisnik(
sifra int not null primary key identity(1,1),
spol varchar (50),
);

create table termin(
sifra int not null primary key identity(1,1),
datum datetime,
korisnik int,
usluga int,
djelatnik int,
);

alter table termin add foreign key (korisnik) references korisnik(sifra);
alter table termin add foreign key (djelatnik) references djelatnik(sifra);
alter table termin add foreign key (usluga) references usluga(sifra);
