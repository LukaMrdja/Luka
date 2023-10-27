create database Bolnica;
use bolnica;

select * from pacijent;

create table pacijent(
ID int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
telefon varchar(50),
brojZK varchar(50)
);

insert into pacijent (ime,prezime,telefon,brojZK)
values ('Luka','Mrdja',0995920886,448521685);

update pacijent set 
ime='Ivan',
prezime='Kovac',
telefon=0995682554,
brojZK=894894651
where ID=1;

delete from pacijent where ime='Ivan';

select * from pacijent where ime ='Luka';