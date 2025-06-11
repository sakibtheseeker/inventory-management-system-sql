-- BRAND TABLE
CREATE TABLE brands (
  bid NUMBER(5) PRIMARY KEY,
  bname VARCHAR2(20)
);

-- INV_USER TABLE
CREATE TABLE inv_user (
  user_id VARCHAR2(20) PRIMARY KEY,
  name VARCHAR2(20),
  password VARCHAR2(20),
  last_login TIMESTAMP,
  user_type VARCHAR2(10)
);

-- CATEGORY TABLE
CREATE TABLE categories (
  cid NUMBER(5) PRIMARY KEY,
  category_name VARCHAR2(20)
);

-- STORE TABLE
CREATE TABLE stores (
  sid NUMBER(5) PRIMARY KEY,
  sname VARCHAR2(20),
  address VARCHAR2(50),
  mobno NUMBER(10)
);

-- PRODUCT TABLE
CREATE TABLE product (
  pid NUMBER(5) PRIMARY KEY,
  cid NUMBER(5),
  bid NUMBER(5),
  sid NUMBER(5),
  pname VARCHAR2(20),
  p_stock NUMBER(5),
  price NUMBER(10,2),
  added_date DATE,
  CONSTRAINT fk_cat FOREIGN KEY (cid) REFERENCES categories(cid),
  CONSTRAINT fk_brand FOREIGN KEY (bid) REFERENCES brands(bid),
  CONSTRAINT fk_store FOREIGN KEY (sid) REFERENCES stores(sid)
);

-- PROVIDES TABLE
CREATE TABLE provides (
  bid NUMBER(5),
  sid NUMBER(5),
  discount NUMBER(5),
  CONSTRAINT fk_provides_brand FOREIGN KEY (bid) REFERENCES brands(bid),
  CONSTRAINT fk_provides_store FOREIGN KEY (sid) REFERENCES stores(sid)
);

-- CUSTOMER CART TABLE
CREATE TABLE customer_cart (
  cust_id NUMBER(5) PRIMARY KEY,
  name VARCHAR2(20),
  mobno NUMBER(10)
);

-- SELECTED PRODUCTS TABLE
CREATE TABLE select_product (
  cust_id NUMBER(5),
  pid NUMBER(5),
  quantity NUMBER(4),
  CONSTRAINT fk_sel_cust FOREIGN KEY (cust_id) REFERENCES customer_cart(cust_id),
  CONSTRAINT fk_sel_prod FOREIGN KEY (pid) REFERENCES product(pid)
);

-- TRANSACTION TABLE (renamed to avoid reserved word conflict)
CREATE TABLE sales_transaction (
  id NUMBER(5) PRIMARY KEY,
  total_amount NUMBER(10,2),
  paid NUMBER(10,2),
  due NUMBER(10,2),
  gst NUMBER(3),
  discount NUMBER(5),
  payment_method VARCHAR2(10),
  cart_id NUMBER(5),
  user_id VARCHAR2(20),
  CONSTRAINT fk_tran_cart FOREIGN KEY (cart_id) REFERENCES customer_cart(cust_id),
  CONSTRAINT fk_user_trans FOREIGN KEY (user_id) REFERENCES inv_user(user_id)
);

-- INVOICE TABLE
CREATE TABLE invoice (
  item_no NUMBER(5),
  product_name VARCHAR2(20),
  quantity NUMBER(5),
  net_price NUMBER(10,2),
  transaction_id NUMBER(5),
  CONSTRAINT fk_inv_trans FOREIGN KEY (transaction_id) REFERENCES sales_transaction(id)
);
