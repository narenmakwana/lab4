CONNECT TO PBW ; 
CREATE TABLE APP.CUSTOMER
  	 (  CUSTOMERID VARCHAR(250) NOT NULL,
   	 PASSWORD VARCHAR(250),
   	 FIRSTNAME VARCHAR(250),
   	 LASTNAME VARCHAR(250),
   	 ADDR1 VARCHAR(250),
   	 ADDR2 VARCHAR(250),
   	 ADDRCITY VARCHAR(250),
   	 ADDRSTATE VARCHAR(250),
   	 ADDRZIP VARCHAR(250),
   	 PHONE VARCHAR(250));

ALTER TABLE APP.CUSTOMER
  	    ADD CONSTRAINT PK_CUSTOMER PRIMARY KEY (CUSTOMERID);

CREATE TABLE APP.INVENTORY
  	 (  INVENTORYID VARCHAR(250) NOT NULL,
   	 NAME VARCHAR(250),
   	 HEADING VARCHAR(250),
   	 DESCRIPTION VARCHAR(250),
   	 PKGINFO VARCHAR(250),
   	 IMAGE VARCHAR(250),
     IMGBYTES BLOB(1000000),
   	 PRICE REAL,
   	 COST REAL,
     CATEGORY INTEGER,
   	 QUANTITY INTEGER,
	 NOTES VARCHAR(250),
   	 ISPUBLIC INTEGER,
     MINTHRESHOLD INTEGER NOT NULL,
     MAXTHRESHOLD INTEGER NOT NULL);

ALTER TABLE APP.INVENTORY
  	    ADD CONSTRAINT PK_INVENTORY PRIMARY KEY (INVENTORYID);

CREATE TABLE APP.ORDER1
    (  ORDERID VARCHAR(250) NOT NULL,
       SELLDATE VARCHAR(250),
       BILLNAME VARCHAR(250),
       BILLADDR1 VARCHAR(250),
       BILLADDR2 VARCHAR(250),
       BILLCITY VARCHAR(250),
       BILLSTATE VARCHAR(250),
       BILLZIP VARCHAR(250),
       BILLPHONE VARCHAR(250),
       SHIPNAME VARCHAR(250),
       SHIPADDR1 VARCHAR(250),
       SHIPADDR2 VARCHAR(250),
       SHIPCITY VARCHAR(250),
       SHIPSTATE VARCHAR(250),
       SHIPZIP VARCHAR(250),
       SHIPPHONE VARCHAR(250),
       CREDITCARD VARCHAR(250),
       CCNUM VARCHAR(250),
       CCEXPIREMONTH VARCHAR(250),
       CCEXPIREYEAR VARCHAR(250),
       CARDHOLDER VARCHAR(250),
       SHIPPINGMETHOD INTEGER NOT NULL,
       PROFIT REAL NOT NULL,
       CUSTOMERID VARCHAR(250));

ALTER TABLE APP.ORDER1
       ADD CONSTRAINT PK_ORDER1 PRIMARY KEY (ORDERID);

CREATE TABLE APP.ORDERITEM
    (  INVENTORYID VARCHAR(250) NOT NULL,
       NAME VARCHAR(250),
       PKGINFO VARCHAR(250),
       PRICE REAL NOT NULL,
       COST REAL NOT NULL,
       CATEGORY INTEGER NOT NULL,
       QUANTITY INTEGER NOT NULL,
       SELLDATE VARCHAR(250),
       ORDER_ORDERID VARCHAR(250) NOT NULL);

ALTER TABLE APP.ORDERITEM
       ADD CONSTRAINT PK_ORDERITEM PRIMARY KEY (INVENTORYID, ORDER_ORDERID);

CREATE TABLE APP.IDGENERATOR
    (  IDNAME VARCHAR(250) NOT NULL,
       IDVALUE INTEGER NOT NULL);

ALTER TABLE APP.IDGENERATOR
       ADD CONSTRAINT PK_IDGENERATOR PRIMARY KEY (IDNAME);

CREATE TABLE APP.BACKORDER
    (  BACKORDERID VARCHAR(250) NOT NULL,
       INVENTORYID VARCHAR(250),
       QUANTITY INTEGER NOT NULL,
       STATUS VARCHAR(250),
       LOWDATE BIGINT NOT NULL,
       ORDERDATE BIGINT NOT NULL,
       SUPPLIERORDERID VARCHAR(250) NULL);

ALTER TABLE APP.BACKORDER
       ADD CONSTRAINT PK_BACKORDER PRIMARY KEY (BACKORDERID);

CREATE TABLE APP.SUPPLIER
    (  SUPPLIERID VARCHAR(250) NOT NULL,
       NAME VARCHAR(250),
       STREET VARCHAR(250),
       CITY VARCHAR(250),
       USSTATE VARCHAR(250),
       ZIP VARCHAR(250),
       PHONE VARCHAR(250),
       URL VARCHAR(250));

ALTER TABLE APP.SUPPLIER
       ADD CONSTRAINT PK_SUPPLIER PRIMARY KEY (SUPPLIERID);
