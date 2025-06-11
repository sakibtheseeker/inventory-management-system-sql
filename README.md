# Inventory Management System – SQL/PLSQL

A comprehensive Inventory Management System implemented using **SQL** and **PLSQL**. It includes structured scripts for creating and managing tables, inserting sample data, and executing business logic via procedures, cursors, and triggers.


## 📦 Features

- Product, Brand, Store & Category Management
- Customer Cart & Transactions
- Restocking Procedure
- Low Stock View
- Trigger for login audit
- Real-world sample data

## 📁 SQL File Structure

| File Name              | Description                           |
|------------------------|---------------------------------------|
| 1_create_tables.sql    | DDL statements for all tables         |
| 2_insert_data.sql      | Sample data for tables                |
| 3_procedures.sql       | Procedures like restock handling      |
| 4_cursors.sql          | Cursor to iterate products            |
| 5_functions.sql        | User-defined function example         |
| 6_triggers.sql         | Trigger for login logging             |
| 7_views.sql            | View for low stock products           |
| 8_test_cases.sql       | Example PLSQL blocks & validations    |

## 🛠️ Requirements

- SQL Client (SQL Developer, DBeaver, etc.)
- Oracle Database (any version with PLSQL support)

## ✅ How to Use

## Clone this repo:
   ```bash
   git clone https://github.com/your-username/inventory-management-system-sql.git
   ```

## 🔧 Setup Instructions

Run the scripts in order using your SQL client:

1. `1_create_tables.sql`  
2. `2_insert_data.sql`  
3. `3_procedures.sql`  
4. `4_cursors.sql`  
5. `5_functions.sql`  
6. `6_triggers.sql`  
7. `7_views.sql`  
8. `8_test_cases.sql`  

> 💡 **Tip:** Use the following command before running test scripts to enable output:
```plsql
SET SERVEROUTPUT ON;


