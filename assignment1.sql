CREATE DATABASE business;

USE business;

CREATE TABLE salespeople(
    snum INT PRIMARY KEY,
    sname  VARCHAR(255) UNIQUE,
    city VARCHAR(255),
    comm INT 
    );
    
INSERT INTO salespeople
(snum,sname,city,comm)
 VALUES
(1001," Peel", "London" ,12),
(1002," Serres"," Sanjose ",13),
(1004," Motika" ,"London" ,11),
(1007, "Rifkin" ,"Barcelona",15),
(1003 ,"Axelrod"," Newyork",10);



CREATE TABLE customers(
	cnum INT PRIMARY KEY,
    cname VARCHAR(255),
    city VARCHAR(255) NOT NULL,
    snum INT ,
	FOREIGN KEY (snum)REFERENCES salespeople(snum)
    );
    
  INSERT INTO customers
(cnum,cname,city,snum)
 VALUES  
(2001 ," Hoffman"," London ",1001),
(2002,"  Giovanni"," Rome", 1003),
(2003 ," Liu"," Sanjose", 1002),
(2004 ," Grass"," Berlin", 1002),
(2006," Clemens"," London", 1001),
(2008," Cisneros"," Sanjose", 1007),
(2007,"Pereira"," Rome", 1004);

CREATE TABLE orders(
onum INT PRIMARY KEY,
Amt  FLOAT,
Odate VARCHAR(10)NOT NULL,                                                             
cnum INT NOT NULL,
FOREIGN KEY (cnum)REFERENCES customers(cnum),																	
snum INT,
FOREIGN KEY (snum)REFERENCES salespeople(snum)
);

INSERT INTO orders
(Onum ,Amt, Odate, Cnum, Snum)
VALUES
(3001 ,18.69, 3-10-1990, 2008, 1007),
(3003 ,767.19, 3-10-1990, 2001, 1001),
(3002 ,1900.10, 3-10-1990, 2007, 1004),
(3005,  5160.45, 3-10-1990, 2003, 1002),
(3006 , 1098.16, 3-10-1990, 2008 ,1007),
(3009, 1713.23 ,4-10-1990 ,2002 ,1003),
(3007,  75.75 ,4-10-1990 ,2004, 1002),
(3008 , 4273.00, 5-10-1990, 2006 ,1001),
(3010  ,1309.95 ,6-10-1990 ,2004 ,1002),
(3011  ,9891.88 ,6-10-1990 ,2006 ,1001);


SELECT COUNT(*)sname FROM salespeople WHERE sname LIKE 'a%' or sname LIKE'A%'; 

SELECT * FROM orders WHERE amt > 2000;


SELECT Count(*) FROM salespeople WHERE city is 'Newyork';


SELECT Count(*) FROM salespeople WHERE city is 'Paris' & 'London';


 SELECT Count(*),odate,snum from orders group by odate,snum;






