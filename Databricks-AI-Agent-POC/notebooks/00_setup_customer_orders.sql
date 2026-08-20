CREATE OR REPLACE TABLE `databricks-customer-data-poc`.data.customer_orders (
    OrderID INT, CustomerID INT, CustomerName STRING, Product STRING,
    OrderDate DATE, Status STRING, Amount DOUBLE
);

INSERT INTO `databricks-customer-data-poc`.data.customer_orders VALUES
(1001,101,'John Smith','Laptop','2026-08-10','Shipped',1200.00),
(1002,102,'Pavan Kumar','Monitor','2026-08-11','Processing',450.00),
(1003,103,'David Lee','Keyboard','2026-08-12','Delivered',120.00),
(1004,104,'Sarah Jones','Laptop','2026-08-13','Delayed',1350.00),
(1005,105,'Ravi Kumar','Mouse','2026-08-14','Shipped',80.00);

SELECT * FROM `databricks-customer-data-poc`.data.customer_orders ORDER BY OrderID;
