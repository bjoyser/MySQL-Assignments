
drop database if exists sales;
CREATE DATABASE Sales;
USE Sales;
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Customer_name VARCHAR(50) NOT NULL,
    Product_Category VARCHAR(50) NOT NULL,
    Ordered_item VARCHAR(50) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE NOT NULL
);
ALTER TABLE Orders
ADD order_quantity INT NOT NULL;
ALTER TABLE Orders
RENAME TO sales_orders;
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) VALUES
(1, 'sharil', 'Electronics', 'Laptop', '1234567890', 2),
(2, 'Bobby', 'Home Appliance', 'Vacuum Cleaner', '2345678901', 1),
(3, 'sasankan', 'Furniture', 'Chair', '3456789012', 4),
(4, 'Dhoni', 'Electronics', 'Smartphone', '4567890123', 1),
(5, 'messi', 'Books', 'Fiction Novel', '5678901234', 3),
(6, 'Franky', 'Clothing', 'T-Shirt', '6789012345', 2),
(7, 'boyka', 'Toys', 'Building Blocks', '7890123456', 1),
(8, 'Hanku', 'Electronics', 'Tablet', '8901234567', 1),
(9, 'Ivy', 'Furniture', 'Table', '9012345678', 1),
(10, 'Jacky', 'Sports', 'Football', '0123456789', 2);
SELECT Customer_name, Ordered_item FROM sales_orders;
UPDATE sales_orders
SET Ordered_item = 'Gaming Laptop'
WHERE Order_Id = 1;
DROP TABLE sales_orders;
