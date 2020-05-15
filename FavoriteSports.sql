create table FavoriteSports (sid int, sname char, sport char);
insert into FavoriteSports values (18,’Eddie’,’Baseball’);
insert into FavoriteSports values (19,’Andrew’,’Football’);
insert into FavoriteSports values (20,’Veronica’,’Volleyball’);
insert into FavoriteSports values (21,’Fran’,’Soccer’);
insert into FavoriteSports values (22,’Juan’,’Soccer’);
-- The above creates the table with data filled in
Select * from FavoriteSports; /* this can be entered in sqlite3
window after FinalProjectElement2.sql is run */
.mode column -- This makes output lined up in columns
create table FavoriteSports (sid int, sname char, sport char);
insert into FavoriteSports values (18,’Eddie’,’Baseball’);
insert into FavoriteSports values (19,’Andrew’,’Football’);
insert into FavoriteSports values (20,’Veronica’,’Volleyball’);
insert into FavoriteSports values (21,’Fran’,’Soccer’);
insert into FavoriteSports values (22,’Juan’,’Soccer’);
select * from FavoriteSports;