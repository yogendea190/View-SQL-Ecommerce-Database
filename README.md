# Task 7 – Creating Views

📌 **Objective:**

The goal of this task is to practice creating and using **views** in SQL for abstraction, security, and query reusability.  
Views are virtual tables based on the result of a SQL query, allowing users to access pre-defined data without dealing with complex joins or exposing sensitive information.

---

🗂️ **Database Details**

**Database Name:** Ecommerce

**Tables Used:**
- **Customer** – Stores customer information.
- **Category** – Stores product categories.
- **Product** – Stores product details linked to categories.
- **Order** – Stores order details linked to customers.
- **Order_Item** – Stores ordered products with quantities and prices.

**Relationships:**
- Each **order** belongs to a **customer** (`customer_id` in Order table).
- Each **order** contains one or more **order items** (`order_id` in Order_Item table).
- Each **order item** refers to a **product** (`product_id` in Product table).
- Each **product** belongs to a **category** (`category_id` in Product table).

---

💻 **SQL Code Summary**

Using the existing `Ecommerce` database schema, we created:
1. **Simple View** – Customer contacts without sensitive details.
2. **Join-based View** – Order summary with customer names and order details.
3. **Aggregated View** – Product sales report with total units sold and total revenue


🛠 Tools Used

MySQL Workbench – For creating and executing SQL queries.
GitHub – For storing and sharing SQL scripts.
VS Code – For writing README.md and SQL code files.   
