-- BRANDS
INSERT INTO brands VALUES (1, 'Apple');
INSERT INTO brands VALUES (2, 'Samsung');
INSERT INTO brands VALUES (3, 'Nike');
INSERT INTO brands VALUES (4, 'Fortune');

-- INV_USER
INSERT INTO inv_user VALUES ('vidit@gmail.com', 'Vidit', '1234', TO_TIMESTAMP('31-OCT-18 12:40', 'DD-MON-YY HH24:MI'), 'admin');
INSERT INTO inv_user VALUES ('harsh@gmail.com', 'Harsh', '1111', TO_TIMESTAMP('30-OCT-18 10:20', 'DD-MON-YY HH24:MI'), 'manager');
INSERT INTO inv_user VALUES ('prashant@gmail.com', 'Prashant', '0011', TO_TIMESTAMP('29-OCT-18 10:20', 'DD-MON-YY HH24:MI'), 'accountant');

-- CATEGORIES
INSERT INTO categories VALUES (1, 'Electronics');
INSERT INTO categories VALUES (2, 'Clothing');
INSERT INTO categories VALUES (3, 'Grocery');

-- STORES
INSERT INTO stores VALUES (1, 'Ram Kumar', 'Katpadi Vellore', 9999999999);
INSERT INTO stores VALUES (2, 'Rakesh Kumar', 'Chennai', 8888555541);
INSERT INTO stores VALUES (3, 'Suraj', 'Haryana', 7777555541);

-- PRODUCTS
INSERT INTO product VALUES (1, 1, 1, 1, 'iPhone', 4, 45000, TO_DATE('31-OCT-18', 'DD-MON-YY'));
INSERT INTO product VALUES (2, 1, 1, 1, 'Airpods', 3, 19000, TO_DATE('27-OCT-18', 'DD-MON-YY'));
INSERT INTO product VALUES (3, 1, 1, 1, 'Smart Watch', 3, 19000, TO_DATE('27-OCT-18', 'DD-MON-YY'));
INSERT INTO product VALUES (4, 2, 3, 2, 'Air Max', 6, 7000, TO_DATE('27-OCT-18', 'DD-MON-YY'));
INSERT INTO product VALUES (5, 3, 4, 3, 'Refined Oil', 6, 750, TO_DATE('25-OCT-18', 'DD-MON-YY'));

-- PROVIDES
INSERT INTO provides VALUES (1, 1, 12);
INSERT INTO provides VALUES (2, 2, 7);
INSERT INTO provides VALUES (3, 3, 15);
INSERT INTO provides VALUES (1, 2, 7);
INSERT INTO provides VALUES (4, 2, 19);
INSERT INTO provides VALUES (4, 3, 20);

-- CUSTOMER CART
INSERT INTO customer_cart VALUES (1, 'Ram', 9876543210);
INSERT INTO customer_cart VALUES (2, 'Shyam', 7777777777);
INSERT INTO customer_cart VALUES (3, 'Mohan', 7777777775);

-- SELECT PRODUCT
INSERT INTO select_product VALUES (1, 2, 2);
INSERT INTO select_product VALUES (1, 3, 1);
INSERT INTO select_product VALUES (2, 3, 3);
INSERT INTO select_product VALUES (3, 2, 1);

-- TRANSACTION
INSERT INTO sales_transaction VALUES (1, 25000, 20000, 5000, 350, 350, 'card', 1);
INSERT INTO sales_transaction VALUES (2, 57000, 57000, 0, 570, 570, 'cash', 2);
INSERT INTO sales_transaction VALUES (3, 19000, 17000, 2000, 190, 190, 'cash', 3);