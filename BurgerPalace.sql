/*My Solution*/
create table BurgerPalace (Category char, NameofDish char, Price$ double);
insert into BurgerPalace values (’Appetizer’,’Mini Tacos’,8.75);
insert into BurgerPalace values (’Soup’,’Chicken Noodle Soup’,7.75);
insert into BurgerPalace values (’Entrée’,’Italian Turkey Burger’,9.95);
insert into BurgerPalace values (’Dessert’,’New York Cheesecake’,5.75);
insert into BurgerPalace values (’Dessert’,’Brownie Slice (4 Piece)’,6.25);
insert into BurgerPalace values (’Entrée’,’Buffalo Chicken Sandwich’,12.75);
insert into BurgerPalace values (’Soup’,’French Onion Soup’,8.25);
insert into BurgerPalace values (’Appetizer’,’Onion Rings’,4.25);
insert into BurgerPalace values (’Drink’,’Passion Fruit Juice’,8.75);
-- The above creates the table with data filled in
Select * from BurgerPalace; /* this can be entered in sqlite3
window after FinalProjectElement2a.sql is run */
.headers on /*shows column names for select, run first after opening file*/
SELECT Category, Count(*) FROM BurgerPalace GROUP BY Category; /*Number of dishes in each category*/
SELECT Category, NameofDish, MAX(Price$) FROM BurgerPalace GROUP BY Category; /*Most expensive dish in each category*/
SELECT NameofDish, MAX(Price$) FROM BurgerPalace; /*Most expensive dish in all of menu*/
SELECT Category, NameofDish, MIN(Price$) FROM BurgerPalace GROUP BY Category; /*Least expensive dish in each category*/
SELECT NameOfDish, MIN(Price$) FROM BurgerPalace; /*Least expensive dish in all of menu*/ 
SELECT Category, printf("%.2f",AVG(Price$))FROM BurgerPalace GROUP BY Category; /*Average Price of Each Category*/
SELECT AVG(Price$) FROM BurgerPalace; /*Average Price of the entire menu*/
SELECT Table1.NameofDish AS NameofDish1, Table2.NameofDish AS NameofDish2 FROM BurgerPalace Table1, BurgerPalace Table2 WHERE Table1.Category = ’Entrée’ AND Table1.Category != Table2.Category AND Table1.Price$ + Table2.Price$ <= 30 ;
/*Bonus Points*/
/*To output to csv file (say test.csv), do
.mode csv
.output test.csv
To switch back to command prompt output mode, do
.output stdout */
/*AND ABS(30-Total1)*/
/*ABS(30-Total1) < ANY (SELECT Table2.NameofDish 
                      FROM BurgerPalace Table2 
					  WHERE Table2.ABS(30-Total1));*/
/*Prof. Tsai Alternate Answer*/
SELECT Table1.Category, Table1.NameofDish, Table2.Category, Table2.NameofDish, Table1.Price$ + Table2.Price$ AS Total1
FROM BurgerPalace Table1, BurgerPalace Table2
WHERE Table1.Category = ’Entrée’ AND Table2.Category != ’Entrée’ AND Total1 <= 30
AND (abs(30-(Table1.Price$ + Table2.Price$)))=(SELECT MIN (abs(30-(Table3.Price$+Table4.Price$))) 
                                               FROM BurgerPalace Table3, BurgerPalace Table4 
											   WHERE Table3.category= ’Entrée’ AND Table4.category != ’Entrée’ AND Table3.Price$+Table4.Price$ <= 30);
