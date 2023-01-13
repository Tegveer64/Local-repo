

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






