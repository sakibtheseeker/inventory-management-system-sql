SET SERVEROUTPUT ON;

DECLARE
  a NUMBER;
  b NUMBER;

  PROCEDURE check_stock(x IN NUMBER) IS
  BEGIN
    IF x < 2 THEN
      DBMS_OUTPUT.PUT_LINE('Stock is Less');
    ELSE
      DBMS_OUTPUT.PUT_LINE('Enough Stock');
    END IF;
  END;
BEGIN
  b := 2;
  SELECT p_stock INTO a FROM product WHERE pid = b;
  check_stock(a);
END;
/