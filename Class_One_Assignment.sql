
CREATE  DATABASE  class_one_assignment;
USE class_one_assignment;

CREATE TABLE customers (
First_Name VARCHAR (40) NOT NULL,
Last_Name VARCHAR (40) NOT NULL,
Date_of_Birth DATE NOT NULL,
Phone VARCHAR(50) DEFAULT NULL  ,
Address VARCHAR (40) NOT NULL,
City VARCHAR (40) NOT NULL,
State VARCHAR (40) NOT NULL,
Points INT (40) NOT NULL,
PRIMARY KEY (Phone)
);


SELECT * FROM customers;

DROP TABLE customers;

INSERT INTO customers (First_name, Last_Name, Date_of_Birth, Phone, Address, City, State, Points) VALUES
('Babara', 'MacCaffrey', '1986-03-28', '781-932-9754', '0 Sage Terrace', 'Waltham', 'MA', 2273),
('Ines', 'Brushfield', '1986-04-13', '804-427-9456', '14187 Commercial Trail', 'Hampton', 'VA', 947),
('Freddi', 'Boagey', '1985-02-07', '719-724-7869', '251 Springs Junction', 'Colorado Springs', 'CO', 2967),
('Ambur', 'Roseburgh', '1974-04-14', '407-231-8017', '30 Arapahoe Terrace', 'Orlando', 'FL', 457),
('Clemmie', 'Betchley', '1973-11-07','', '5 Spohn Circle', 'Arlington', 'TX',  3675);

TRUNCATE TABLE customers;

SELECT * FROM customers WHERE Points > 1000 LIMIT 2;

SELECT * FROM customers WHERE dob BETWEEN '1980-01-01' AND '1990-12-31' OR Points <1000 ;


SELECT * FROM customers ORDER BY Points ASC;

SELECT * FROM customers ORDER BY Points DESC;

SELECT * FROM customers WHERE First_Name LIKE '%burgh%' OR Last_Name LIKE '%burgh%';

SELECT * FROM customers WHERE First_Name REGEXP 'burgh' OR Last_Name REGEXP 'burgh';

SELECT * FROM customers WHERE Phone= '';

ALTER TABLE customers CHANGE COLUMN Date_of_Birth dob DATE;


SELECT * FROM customers WHERE Points= (SELECT MAX(Points) FROM customers);


SELECT *, CASE
WHEN Points <1000 THEN 'they are bronze member'
WHEN Points >1000 THEN 'they are silver member'
WHEN Points >2000 THEN 'they are gold member'
WHEN Points >3000 THEN 'they are platinum member'
END AS Points_Calculation FROM customers;

