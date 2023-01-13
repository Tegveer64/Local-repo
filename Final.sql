

/*  TABLES CREATION */

CREATE TABLE products    
(prodID NUMBER NOT NULL,    
prodName VARCHAR(50) NOT NULL,    
prodCategory VARCHAR(50) NOT NULL,    
prodPrice NUMBER NOT NULL,    
prodQuantity NUMBER NOT NULL,    
CONSTRAINT PK_products    
PRIMARY KEY (prodID)    
);


CREATE TABLE supplier 
(prodID NUMBER NOT NULL, 
supplierID NUMBER NOT NULL, 
suppAddress VARCHAR(40) NOT NULL, 
suppCity VARCHAR(30) NOT NULL, 
CONSTRAINT PK_Supplier  
PRIMARY KEY (supplierID), 
CONSTRAINT FK_SuppProdID FOREIGN KEY (prodID) REFERENCES products (prodID) 
);

CREATE TABLE promotions 
(prodID NUMBER NOT NULL, 
promotionID VARCHAR(40) NOT NULL, 
startDate DATE NOT NULL, 
endDate DATE NOT NULL, 
description VARCHAR(250) NOT NULL, 
CONSTRAINT PK_promotionID  
PRIMARY KEY (promotionID), 
CONSTRAINT FK_prodID FOREIGN KEY (prodID) REFERENCES products(prodID) 
);


CREATE TABLE customers  
(prodID NUMBER NULL, 
custID NUMBER NOT NULL, 
custFirstName VARCHAR(30) NOT NULL, 
custLastName VARCHAR(30) NOT NULL, 
custAddress VARCHAR(50) NOT NULL, 
custPhoneN NUMBER NOT NULL, 
custEmail VARCHAR(50) NOT NULL, 
CONSTRAINT FK_cust_prodID FOREIGN KEY (prodID) REFERENCES products(prodID), 
CONSTRAINT PK_cust  
PRIMARY KEY (custID) 
);



CREATE TABLE sales 
(salesID NUMBER NULL, 
prodID NUMBER NULL, 
custID NUMBER NULL, 
promotionID VARCHAR(40) NULL, 
quantitySold NUMBER NULL, 
CONSTRAINT FK_salesprodID FOREIGN KEY (prodID) REFERENCES products(prodID), 
CONSTRAINT FK_salescustID FOREIGN KEY (custID) REFERENCES customers(custID), 
CONSTRAINT FK_salespromID FOREIGN KEY (promotionID) REFERENCES promotions(promotionID), 
CONSTRAINT PK_salesID  
PRIMARY KEY (salesID) 
);


/*  PRODUCTS VALUES INSERTION  */


INSERT INTO Products VALUES (1, 'bags', 'Home', 10, 1000);
INSERT INTO Products VALUES (2, 'bottles', 'Home', 15, 1000);
INSERT INTO Products VALUES (3, 'Aniseed Syrup', 'Food', 5, 1000);
INSERT INTO Products VALUES (4, 'Cajun Seasoning', 'Food', 2, 1000);
INSERT INTO Products VALUES (5, 'Gumbo Mix', 'Food', 2, 1000);
INSERT INTO Products VALUES (6, 'Boysenberry Spread', 'Food', 3, 1000);
INSERT INTO Products VALUES (7, 'Oganic Dried Pears', 'Food', 8, 1000);
INSERT INTO Products VALUES (8, 'Cranberry Sauce', 'Food', 6, 1000);
INSERT INTO Products VALUES (9, 'Olive Oil', 'Food', 10, 1000);
INSERT INTO Products VALUES (10, 'Spelt Pasta', 'Food', 3, 1000);
INSERT INTO Products VALUES (11, 'Queso Cabralese', 'Food', 25, 500);
INSERT INTO Products VALUES (12, 'Mozzarella', 'Food', 8, 500);
INSERT INTO Products VALUES (13, 'Pesto', 'Food', 5, 1000);
INSERT INTO Products VALUES (14, 'Tofu', 'Home', 6, 1000);
INSERT INTO Products VALUES (15, 'Panettone', 'Food', 10, 1000);
INSERT INTO Products VALUES (16, 'Torrone', 'Food', 6, 1000);
INSERT INTO Products VALUES (17, 'Lavazza Caffe', 'Food', 4, 1000);
INSERT INTO Products VALUES (18, 'Limoncello', 'Liquor', 30, 600);
INSERT INTO Products VALUES (19, 'Amaretto di Saronno', 'Liquor', 34, 600);
INSERT INTO Products VALUES (20, 'Valpolicella', 'Wine', 45, 300);
INSERT INTO Products VALUES (21, 'Amarone', 'Wine', 65, 300);
INSERT INTO Products VALUES (22, 'Biscotti', 'Food', 3, 1000);
INSERT INTO Products VALUES (23, 'Pan di stelle', 'Food', 3, 1000);
INSERT INTO Products VALUES (24, 'Rio mare Tonno', 'Food', 6, 1000);
INSERT INTO Products VALUES (25, 'Rio mare Insalata', 'Food', 4, 1000);
INSERT INTO Products VALUES (26, 'Sale', 'Food', 1, 1000);
INSERT INTO Products VALUES (27, 'Farina ZeroZero', 'Food', 3, 1000);
INSERT INTO Products VALUES (28, 'Gnocchi', 'Food', 3, 600);
INSERT INTO Products VALUES (29, 'BreadSticks', 'Food', 2, 1000);
INSERT INTO Products VALUES (30, 'Nutella', 'Food', 5, 1000);
INSERT INTO Products VALUES (31, 'Parmigiano', 'Food', 25, 1000);
INSERT INTO Products VALUES (32, 'Mascarpone Fabioli','Food', 14, 1000);
INSERT INTO Products VALUES (33, 'Pecorino Romano', 'Food', 28, 1000);
INSERT INTO Products VALUES (34, 'Panna al tartufo', 'Food', 4, 1000);
INSERT INTO Products VALUES (35, 'Acqua Panna', 'Drinks', 3, 1000);


/*  SUPPLIER VALUES INSERTION  */


INSERT INTO supplier VALUES (1,1,'984-3428 Sed Rd.','Lagos');
INSERT INTO supplier VALUES (2,2,'375-3423 Sed Rd.','Bocchigliero');
INSERT INTO supplier VALUES (3,3,'677-3245 Sit St.','Kamianets-Podilskyi');
INSERT INTO supplier VALUES (4,4,'611-5613 Ullamcorper Rd.','Rankweil');
INSERT INTO supplier VALUES (5,5,'245-8005 Donec St.','Oaxaca');
INSERT INTO supplier VALUES (6,6, '1725 Urna Avenue','Nieuwkerken-Waas');
INSERT INTO supplier VALUES (7,7,'P.O. Box 195, 8960 Natoque Rd.','Mthatha');
INSERT INTO supplier VALUES (8,8,'P.O. Box 279, 3305 Rhoncus Ave','Logroño');
INSERT INTO supplier VALUES (9,9,'278-6454 Sem Rd.','Gladstone');
INSERT INTO supplier VALUES (10,10,'261-4950 Elementum Av.','Kungälv');
INSERT INTO supplier VALUES (11,11,'619-8166 Interdum Rd.','San Luis Río Colorado');
INSERT INTO supplier VALUES (12,12,'Ap #840-9287 Felis Rd.','Rawalakot');
INSERT INTO supplier VALUES (13,13,'441-8480 Ultricies Rd.','Vichy');
INSERT INTO supplier VALUES (14,14,'P.O. Box 190, 8091 Hymenaeos. Street','Jaén');
INSERT INTO supplier VALUES (15,15,'Ap #350-4325 Mauris St.','Lidköping');
INSERT INTO supplier VALUES (16,16,'134-646 Consequat, Avenue','Khyber City');
INSERT INTO supplier VALUES (17,17,'9944 Porttitor Rd.','Liberia');
INSERT INTO supplier VALUES (18,18,'P.O. Box 181, 4339 Vulputate, Road','H?i D??ng');
INSERT INTO supplier VALUES (19,19, 'Ap #125-1874 Aliquet St.','Brovary');
INSERT INTO supplier VALUES (20,20, 'Ap #838-9256 In, Road','Governador Valadares');
INSERT INTO supplier VALUES (21,21,'583-2615 Vulputate, Rd.','Nam ??nh');
INSERT INTO supplier VALUES (22,22,'825-2762 Interdum. Road','Lisieux');
INSERT INTO supplier VALUES (23,23,'692-702 Volutpat. St.','Logroño');
INSERT INTO supplier VALUES (24,24,'127 Pede Ave','Riosucio');
INSERT INTO supplier VALUES (25,25,'P.O. Box 760, 8360 Ipsum Rd.','Agartala');
INSERT INTO supplier VALUES (26,26,'578-893 Orci St.','Tuas');
INSERT INTO supplier VALUES (27,27,'Ap #139-6991 Aliquet Av.','Kurram Agency');
INSERT INTO supplier VALUES (28,28,'530-2507 Eu Street','Cape Town');
INSERT INTO supplier VALUES (29,29,'249-5973 Sapien Road','Zeist');
INSERT INTO supplier VALUES (30,30,'P.O. Box 433, 719 A, Av.','Porto Alegre');
INSERT INTO supplier VALUES (31,31,'445-9816 Odio Road','Arequipa');
INSERT INTO supplier VALUES (32,32,'P.O. Box 568, 4332 Neque St.','Newcastle-upon-Tyne');
INSERT INTO supplier VALUES (33,33,'170-3346 Libero Ave','Guizhou');
INSERT INTO supplier VALUES (34,34,'P.O. Box 743, 6528 Sit Street','Palayan');
INSERT INTO supplier VALUES (35,35,'318-3945 Non Rd.','Belmont');


/* SUPPLIER VALUES INSERTION */


INSERT INTO promotions VALUES  (1,'XMAS25',DATE '2023-12-25', DATE'2023-12-25','Boxing day discount');
INSERT INTO promotions VALUES  (2,'ALLELUHIA123',DATE '2023-12-24',DATE '2023-12-24','christmas day discount');
INSERT INTO promotions VALUES  (3,'2023YEAH',DATE '2023-01-01',DATE'2023-01-01','new year day discount');
INSERT INTO promotions VALUES  (4,'APRILFOOL69',DATE'2023-04-01',DATE'2023-04-01','april first discount');
INSERT INTO promotions VALUES  (5,'EASTER23',DATE'2023-04-25',DATE'2023-04-25','easter discount');
INSERT INTO promotions VALUES  (6,'CYBER2023',DATE'2023-12-01',DATE'2023-12-01','cyber monday discount');
INSERT INTO promotions VALUES  (7,'BLACKF2023',DATE'2023-11-30',DATE'2023-11-30','black friday discount');


/* CUSTOMERS VALUES INSERTION */

INSERT INTO customers VALUES (1,010,'Daria ','Roberts','2271 Lobortis. Street','8487341625','suspendisse.commodo.tincidunt@google.com');
INSERT INTO customers VALUES (2,015,'Chanda ','Jensen','4854 Lectus. St.','8332379372','amet.ornare@google.com');
INSERT INTO customers VALUES (3,014,'Ulric','Christensen','4413 Velit Ave','1705889347','ultricies@google.com');
INSERT INTO customers VALUES (4,027,'Pascale','Pascale','5426 Convallis St.','8162224522','consectetuer.ipsum@google.com');
INSERT INTO customers VALUES (5,009,'Stuart','Atkinson',' 9621 Vivamus Rd.','6205947448','enim.etiam@google.com');
INSERT INTO customers VALUES (6,037,'Thane','Ortiz','1388 Ipsum. Rd.','3362757297','nulla@google.com');
INSERT INTO customers VALUES (7,098,'Amir','Joyner','7018 Vel, Ave','9575248780','interdum@google.com');
INSERT INTO customers VALUES (8,076,'Yardley','Pruitt','4612 Sagittis St.','4525995882','mauris.sapien.cursus@google.com');
INSERT INTO customers VALUES (9,01,'Adrian','Clements','9009 Leo. Rd.','5329793042','congue.in@google.com');
INSERT INTO customers VALUES (10,065,'Brody','Macdonald','959-8657 Vestibulum. Avenue','8231972572','dolor@google.com');
INSERT INTO customers VALUES (11,032,'Boris','Walls','8891 Ullamcorper, Rd.','6072894716','dis@google.com');
INSERT INTO customers VALUES (12,044,'Elaine','Prince','2898 Risus Ave','8729525203','purus.accumsan@google.com');
INSERT INTO customers VALUES (13,057,'Mallory','Marks','6461 Pede, St.','8512271644','sed.sapien.nunc@google.com');
INSERT INTO customers VALUES (14,092,'Paul','Bennett','6458 Odio. Road','7381583673','imperdiet@google.com');
INSERT INTO customers VALUES (15,067,'Palmer','Vega','5856 At, St.','4555375734','donec@google.com');
INSERT INTO customers VALUES (16,022,'Lee','Duran','1395 Nibh. Rd.','6757056437','magna@google.com');
INSERT INTO customers VALUES (17,060,'Cailin','Lindsay','103-6095 Mus. Rd.','8455824248','cursus.non@google.com');
INSERT INTO customers VALUES (18,004,'Cassady','Little',' Primis Road','8136633567','egestas.aliquam@google.com');
INSERT INTO customers VALUES (19,070,'Brian','Delgado','6193 Pede. Road','9432622666','quam.elementum.at@google.com');
INSERT INTO customers VALUES (20,039,'Melvin','Sloan','6622 Pharetra St.','3453010267','semper.rutrum.fusce@google.com');






/* SALES VALUES INSERTION */
INSERT INTO sales VALUES (1,5,010,'XMAS25',3707);
INSERT INTO sales VALUES (2,3,015,'XMAS25',16339);
INSERT INTO sales VALUES (3,4,014,'XMAS25',34234);
INSERT INTO sales VALUES (4,5,060,'XMAS25',35538);
INSERT INTO sales VALUES (5,3,004,'ALLELUHIA123',4094);
INSERT INTO sales VALUES (6,5,070,'ALLELUHIA123',33045);
INSERT INTO sales VALUES (7,5,039,'CYBER2023',39490);
INSERT INTO sales VALUES (8,9,044,'CYBER2023',48360);
INSERT INTO sales VALUES (9,9,057,'CYBER2023',29415);
INSERT INTO sales VALUES (10,7,092,'CYBER2023',35529);
INSERT INTO sales VALUES (11,9,067,'BLACKF2023',19585);
INSERT INTO sales VALUES (12,5,022,'BLACKF2023',39696);
INSERT INTO sales VALUES (13,3,01,'BLACKF2023',16734);




/* INDEXES CREATION */

CREATE INDEX product_Category ON products (prodCategory);
CREATE INDEX supp_CITY ON supplier (suppCity);
CREATE INDEX prom_Date ON promotions (startDate);
CREATE INDEX cust_Name ON customers (custLastName);
CREATE INDEX sales_QTY ON sales (quantitySold);


/*  CHECK ALL INDEXES  */

SELECT  
     index_name, 
     index_type, 
     visibility, 
     status 
FROM 
   all_indexes
   



/*  SEQUENCES CREATION  */

CREATE SEQUENCE products_seq
    INCREMENT BY 1
    START WITH 36
    MINVALUE 36
    MAXVALUE 100
    CACHE 2;
    
    

/* SEQUENCE INSERTION INTO PRODUCTS */


INSERT INTO products (prodID,prodName,prodCategory,prodPrice,prodQuantity) VALUES (products_seq.NEXTVAL, 'salame', 'Food',18,500);
INSERT INTO products (prodID,prodName,prodCategory,prodPrice,prodQuantity) VALUES (products_seq.NEXTVAL, 'MOKA','Home',38,200);


/* INFORMATION ABOUT THE SEQUENCE */
select * from all_sequences where sequence_NAME=UPPER('products_seq');


/*  CHECK NEW INFORMATION IS ADDED TO PRODUCTS TABLE  */
SELECT * FROM products


/* 1) TRIGGER TO UPDATE CUSTOMER TABLE */

/* FIRST STEP - CREATE AUDIT TABLE TO LOG DATA TO BE UPDATED */

CREATE TABLE my_audit (
      audit_id         NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
      table_name       VARCHAR2(255),
      transaction_name VARCHAR2(10),
      by_user          VARCHAR2(30),
      transaction_date DATE,
      old_FirstName     VARCHAR(50) NOT NULL, 
      old_LastName      VARCHAR(50) NOT NULL, 
      old_Address       VARCHAR(50) NOT NULL, 
      old_PhoneN        NUMBER NOT NULL, 
      old_Email         VARCHAR(50) NOT NULL, 
      new_FName         VARCHAR(30) NOT NULL,
      new_LName         VARCHAR(30) NOT NULL,
      new_Address       VARCHAR(30) NOT NULL, 
      new_Phone         NUMBER NOT NULL,
      new_email         VARCHAR(50) NOT NULL
);




/* CREATE TRIGGER */
CREATE OR REPLACE TRIGGER customers_UPDATE_trg
    AFTER 
    UPDATE OR DELETE 
    ON customers
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   -- determine the transaction type
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;
   -- insert a row into the audit table   
   INSERT INTO my_audit ( table_name, transaction_name, by_user, transaction_date, old_FirstName, old_LastName, old_Address, old_PhoneN, old_Email, new_FName, new_LName, new_Address, new_Phone, new_email )
                  VALUES( 'WORDS',     l_transaction,    USER,    SYSDATE,           :OLD.custFirstName, :OLD.custLastName, :OLD.custAddress, :OLD.custPhoneN, :OLD.custEmail, :NEW.custFirstName, :NEW.custLastName, :NEW.custAddress, :NEW.custPhoneN, :NEW.custEmail);
END;
/   


/* UPDATE DATA */
UPDATE customers SET custFirstName = 'Riccardo' WHERE custID = 010;
UPDATE customers SET custLastName = 'Reali'   WHERE custID = 010;

/* CHECK NEW DATA IS UPDATED */
SELECT * FROM customers




/* SECOND TRIGGER TO UPDATE PROMOTIONS TABLE */

/* FIRST STEP - CREATE AUDIT TABLE TO LOG DATA TO BE UPDATED */

CREATE TABLE my_audit2 (
      audit_id         NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
      table_name       VARCHAR2(255),
      transaction_name VARCHAR2(10),
      by_user          VARCHAR2(30),
      transaction_date DATE,
      old_promotionID  VARCHAR(40) NOT NULL, 
      old_startDate    DATE NOT NULL, 
      old_endDate      DATE NOT NULL, 
      old_description  VARCHAR(250) NOT NULL,
      new_promotionID  VARCHAR(40) NOT NULL, 
      new_startDate    DATE NOT NULL, 
      new_endDate      DATE NOT NULL, 
      new_description  VARCHAR(250) NOT NULL

);




/* CREATE TRIGGER */
CREATE OR REPLACE TRIGGER promotions_UPDATE_trg
    AFTER 
    UPDATE OR DELETE 
    ON promotions
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   -- determine the transaction type
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;
   -- insert a row into the audit table   
   INSERT INTO my_audit2 ( table_name, transaction_name, by_user, transaction_date, old_promotionID, old_startDate, old_endDate, old_description, new_promotionID, new_startDate, new_endDate, new_description )
                  VALUES( 'WORDS',     l_transaction,    USER,    SYSDATE,           :OLD.promotionID, :OLD.startDate, :OLD.endDate, :OLD.description, :NEW.promotionID, :NEW.startDate, :NEW.endDate, :NEW.description);
END;
/   



/* FUNCTION - FINDS THE TOTAL SALES AMMOUNT  */

create or replace function myfunction
return number
is
cursor cur is 
select quantitysold amount from sales;
total_amount number;
amount number;
begin
total_amount :=0;
open cur;
fetch cur into amount;
while(cur%FOUND) loop
total_amount := total_amount + amount;
fetch cur into amount;
end loop;
close cur;
return total_amount;
end;


--select myfunction from dual;
declare
amount number;
begin
amount := myfunction();
DBMS_OUTPUT.PUT_LINE('All protucts sale quantity is:' ||amount);
end;


/* PROCEDURES */

-- FIRST PROCEDURE IS TO FIND THE CUSTOMER THAT BUYS THE MOST PRODUCTS 

create or replace procedure customerBuyMostProducts (amount in NUMBER)
is
cursor cur is 
select queryresult.quantity quantity,CUSTOMERS.custfirstname||' 
'||CUSTOMERS.custlastname from (
select sales.custid,sum(sales.QUANTITYSOLD) quantity from sales
group by sales.custid
)queryresult 
left join CUSTOMERS
on(queryresult.custid = CUSTOMERS.custid);
customer_quantity number;
customer_name varchar2(100);
max_quantity number;
max_customer_name varchar2(100);
begin
max_quantity :=0;
open cur;
fetch cur into customer_quantity,customer_name;
while(cur%FOUND) loop
if customer_quantity>max_quantity then
max_quantity := customer_quantity;
max_customer_name := customer_name;
end if;
fetch cur into max_quantity,customer_name;
end loop;
close cur;
DBMS_OUTPUT.PUT_LINE('customer_name:'|| max_customer_name||' 
quantity:'||max_quantity);
end;



/* INTITIALIZE PROCEDURE */


begin
customerBuyMostProducts(5);
end;



-- find the PRODUCTS that in quantity level sells best
create or replace procedure productsSellsMostQuantity (amount in NUMBER)
is
cursor cur is 
select queryresult.quantity quantity,PRODUCTS.prodname from (
select sales.PRODID,sum(sales.quantitysold) quantity from sales
group by sales.PRODID
)queryresult 
left join products
on(queryresult.PRODID = products.PRODID);
product_quantity number;
product_name varchar2(100);
max_quantity number;
max_product_name varchar2(100);
begin
max_quantity :=0;
open cur;
fetch cur into product_quantity,product_name;
while(cur%FOUND) loop
if product_quantity>max_quantity then
max_quantity := product_quantity;
max_product_name := product_name;
end if;
fetch cur into product_quantity,product_name;
end loop;
close cur;
DBMS_OUTPUT.PUT_LINE('max_product_name:'|| max_product_name||' 
max_quantity:'||max_quantity ||);
end;

/* INITIALIZE THE PROCEDURE */
begin
productsSellsMostQuantity(5);
end;

