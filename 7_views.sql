CREATE OR REPLACE VIEW product_stock AS
SELECT pid, pname, p_stock
FROM product
WHERE p_stock < 5;
/