CREATE VIEW ileFilmowWKateegoriiCenowej AS
SELECT Cena, COUNT(*) ilosc
FROM Film
group by Cena 

go

Create View WiekFilmu As
select Tytu�,(YEAR(GETDATE()) - RokPremiry) Wiek --czyli tu mamy np zmienne w czasie poniewa� za rok film b�dzie mia� wiek o 1 starszy
From Film

go
create view DorobekRezysera as
select r.Imie, r.Nazwisko, count(*) ilosc
from film f 
join RezyserFilm rf 
on rf.FilmID=f.FilmID 
join rezyser r 
on rf.RezyserID=r.RezyserID
group by r.RezyserID, r.Nazwisko, r.Imie

go


Create View IlePracownikow as
select w.WypozyczalniaID, COUNT(*) liczbaPracownikow
from Wypozyczalnia w 
join Pracownicy p
on w.WypozyczalniaID = p.WypozyczalniaID
group by w.WypozyczalniaID

go

Create View NajdluzszyFilm as
Select Max(dlugosc) [D�ugo�� najd�u�szego Filmu]
From Film
go


Create View NajkrotszyFilm as
Select Min(dlugosc) [D�ugo�� Najkr�tszego Filmu]
From Film
go

