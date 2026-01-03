-- Load customer data
\COPY customers (customer_id, sex, customer_age, tenure)
FROM 'C:/Users/DELL/Desktop/SQL Project/Statistical-Analysis-and-Data-Mining-with-SQL/datasets/customer_details.csv'
DELIMITER ','
CSV HEADER;

-- Load basket data
\COPY baskets (customer_id, product_id, basket_date, basket_count)
FROM 'C:/Users/DELL/Desktop/SQL Project/Statistical-Analysis-and-Data-Mining-with-SQL/datasets/basket_details.csv'
DELIMITER ','
CSV HEADER;
