CREATE OR REPLACE PROCEDURE restock_product(
  p_pid IN NUMBER,
  p_qty IN NUMBER
)
IS
  v_exists NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_exists FROM product WHERE pid = p_pid;

  IF v_exists = 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Product does not exist.');
  END IF;

  UPDATE product
  SET p_stock = p_stock + p_qty
  WHERE pid = p_pid;

  DBMS_OUTPUT.PUT_LINE('Stock successfully updated for Product ID: ' || p_pid);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error while restocking: ' || SQLERRM);
END;
/