create database Bolnica;
use bolnica;

create table lijecnik(
ID int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
zvanje varchar (50)
);

create table pacijent(
ID int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
telefon int,
brojZK int
);

create table odjel(
ID int not null primary key identity(1,1),
kat int,
naziv varchar(50)
);

create table pregled(
ID int not null primary key identity(1,1),
datum datetime,
vrijeme time,
boravak int
);

create table boravak(
ID int not null primary key identity(1,1),
pacijent int,
soba int not null,
lijecnik int
);

create table soba(
ID int not null primary key identity(1,1),
broj int,
pacijent int,
odjel int
);

alter table boravak add foreign key (lijecnik) references lijecnik(ID);
alter table boravak add foreign key (pacijent) references pacijent(ID);
alter table boravak add foreign key (soba) references soba(ID);
alter table soba add foreign key (odjel) references odjel(ID);
alter table pregled add foreign key (boravak) references boravak(ID);