CREATE OR REPLACE TRIGGER trg_login_audit
BEFORE UPDATE OF last_login ON inv_user
FOR EACH ROW
BEGIN
  DBMS_OUTPUT.PUT_LINE('User ID ' || :NEW.user_id || ' login time updated.');
END;
/