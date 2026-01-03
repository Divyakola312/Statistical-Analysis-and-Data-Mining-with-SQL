-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    sex VARCHAR(10),
    customer_age INT,
    tenure INT
);

-- Create baskets table
CREATE TABLE baskets (
    basket_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    basket_date DATE,
    basket_count INT,
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

