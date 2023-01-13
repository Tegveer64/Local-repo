






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
   




