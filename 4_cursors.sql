DECLARE
  p_id product.pid%TYPE;
  p_name product.pname%TYPE;
  p_stock product.p_stock%TYPE;

  CURSOR p_product IS
    SELECT pid, pname, p_stock FROM product;
BEGIN
  OPEN p_product;
  LOOP
    FETCH p_product INTO p_id, p_name, p_stock;
    EXIT WHEN p_product%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(p_id || ' ' || p_name || ' ' || p_stock);
  END LOOP;
  CLOSE p_product;
END;
/