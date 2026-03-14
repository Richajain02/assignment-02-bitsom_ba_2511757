DROP DATABASE IF EXISTS store;  
SHOW DATABASES;  
CREATE DATABASE  IF NOT EXISTS store;  
USE store; 

CREATE TABLE dim_date (
  date_id INT PRIMARY KEY,
  full_date DATE,
  month INT,
  year int
);

CREATE TABLE dim_store (
   store_id INT PRIMARY KEY,
   store_name varchar(100),
   store_city varchar(100)
);

CREATE TABLE dim_product (
   product_id INT PRIMARY KEY,
   product_name varchar(100),
   category varchar(50)
);

CREATE TABLE fact_sales (
   sales_id INT PRIMARY KEY,
   date_id INT,
   store_id INT,
   product_id INT,
   units_sold INT,
   unit_price DECIMAL(10,2),
   total_revenue DECIMAL(10,2),
   FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
   FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
   FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

INSERT INTO dim_date VALUES (1,'2023-01-18',1,2023);
INSERT INTO dim_date VALUES (2,'2023-02-05',2,2023);
INSERT INTO dim_date VALUES (3,'2023-03-31',3,2023);
INSERT INTO dim_date VALUES (4,'2023-04-28',4,2023);
INSERT INTO dim_date VALUES (5,'2023-05-21',5,2023);
INSERT INTO dim_date VALUES (6,'2023-06-04',6,2023);
INSERT INTO dim_date VALUES (7,'2023-08-09',8,2023);
INSERT INTO dim_date VALUES (8,'2023-10-26',10,2023);
INSERT INTO dim_date VALUES (9,'2023-11-18',11,2023);
INSERT INTO dim_date VALUES (10,'2023-12-12',12,2023);

INSERT INTO dim_store VALUES (1,'Chennai Anna','Chennai');
INSERT INTO dim_store VALUES (2,'Delhi South','Delhi');
INSERT INTO dim_store VALUES (3,'Bangalore MG','Bangalore');
INSERT INTO dim_store VALUES (4,'Pune FC Road','Pune');
INSERT INTO dim_store VALUES (5,'Mumbai Central','Mumbai');

INSERT INTO dim_product VALUES (1,'Speaker','Electronics');
INSERT INTO dim_product VALUES (2,'Tablet','Electronics');
INSERT INTO dim_product VALUES (3,'Phone','Electronics');
INSERT INTO dim_product VALUES (4,'Smartwatch','Electronics');
INSERT INTO dim_product VALUES (5,'Atta 10kg','Groceries');
INSERT INTO dim_product VALUES (6,'Biscuits','Groceries');
INSERT INTO dim_product VALUES (7,'Jeans','Clothing');
INSERT INTO dim_product VALUES (8,'Jacket','Clothing');
INSERT INTO dim_product VALUES (9,'Laptop','Electronics');
INSERT INTO dim_product VALUES (10,'Milk 1L','Groceries');
INSERT INTO dim_product VALUES (11,'Saree','Clothing');

INSERT INTO fact_sales VALUES (1,1,5,11,15,35451.81,531777.15);
INSERT INTO fact_sales VALUES (2,2,1,3,20,48703.39,974067.80);
INSERT INTO fact_sales VALUES (3,3,4,4,6,58851.01,353106.06);
INSERT INTO fact_sales VALUES (4,4,5,10,10,43374.39,433743.90);
INSERT INTO fact_sales VALUES (5,5,3,9,13,42343.15,550461.00);
INSERT INTO fact_sales VALUES (6,6,1,8,15,30187.24,452808.60);
INSERT INTO fact_sales VALUES (7,7,3,5,12,52464.00,629568.00);
INSERT INTO fact_sales VALUES (8,8,4,7,16,2317.47,37079.52);
INSERT INTO fact_sales VALUES (9,9,2,8,5,30187.24,150936.20);
INSERT INTO fact_sales VALUES (10,10,1,2,11,23226.12,255487.32);
