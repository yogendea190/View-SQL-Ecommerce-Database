use Ecommerce;

--Create a Simple View

CREATE VIEW customer_contacts AS
SELECT 
    customer_id,
    CONCAT(first_name, ' ', last_name) AS full_name,


---A view to show order details with customer names and total amount

CREATE VIEW order_summary AS
SELECT 
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    o.total_price
FROM `Order` o
JOIN Customer c ON o.customer_id = c.customer_id;


---Multi-table View for Reporting

CREATE VIEW product_sales_report AS
SELECT 
    p.product_id,
    p.description AS product_name,
    c.name AS category_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.price * oi.quantity) AS total_revenue
FROM Order_Item oi
JOIN Product p ON oi.product_id = p.product_id
JOIN Category c ON p.category_id = c.category_id
JOIN `Order` o ON oi.order_id = o.order_id
GROUP BY p.product_id, p.description, c.name;