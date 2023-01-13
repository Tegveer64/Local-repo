




   



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



