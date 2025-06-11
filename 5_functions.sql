DECLARE
  due1 NUMBER(7);
  cart_id1 NUMBER(7);
  FUNCTION get_cart(c_id NUMBER) RETURN NUMBER IS
  BEGIN
    RETURN c_id;
  END;
BEGIN
  cart_id1 := get_cart(1);
  SELECT due INTO due1 FROM sales_transaction WHERE cart_id = cart_id1;
  DBMS_OUTPUT.PUT_LINE('Due amount: ' || due1);
END;
/