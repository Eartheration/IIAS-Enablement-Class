------------------------------------------------
-- DDL Statements for Table "CALL_CENTER_CURLOAD"
------------------------------------------------
 

CREATE TABLE "CALL_CENTER_CURLOAD"  (
		  "CC_CALL_CENTER_SK" BIGINT NOT NULL , 
		  "CC_CALL_CENTER_ID" CHAR(16 OCTETS) NOT NULL , 
		  "CC_REC_START_DATE" DATE , 
		  "CC_REC_END_DATE" DATE , 
		  "CC_CLOSED_DATE_SK" BIGINT , 
		  "CC_OPEN_DATE_SK" BIGINT , 
		  "CC_NAME" VARCHAR(50 OCTETS) , 
		  "CC_CLASS" VARCHAR(50 OCTETS) , 
		  "CC_EMPLOYEES" BIGINT , 
		  "CC_SQ_FT" BIGINT , 
		  "CC_HOURS" CHAR(20 OCTETS) , 
		  "CC_MANAGER" VARCHAR(40 OCTETS) , 
		  "CC_MKT_ID" BIGINT , 
		  "CC_MKT_CLASS" CHAR(50 OCTETS) , 
		  "CC_MKT_DESC" VARCHAR(100 OCTETS) , 
		  "CC_MARKET_MANAGER" VARCHAR(40 OCTETS) , 
		  "CC_DIVISION" BIGINT , 
		  "CC_DIVISION_NAME" VARCHAR(50 OCTETS) , 
		  "CC_COMPANY" BIGINT , 
		  "CC_COMPANY_NAME" CHAR(50 OCTETS) , 
		  "CC_STREET_NUMBER" CHAR(10 OCTETS) , 
		  "CC_STREET_NAME" VARCHAR(60 OCTETS) , 
		  "CC_STREET_TYPE" CHAR(15 OCTETS) , 
		  "CC_SUITE_NUMBER" CHAR(10 OCTETS) , 
		  "CC_CITY" VARCHAR(60 OCTETS) , 
		  "CC_COUNTY" VARCHAR(30 OCTETS) , 
		  "CC_STATE" CHAR(2 OCTETS) , 
		  "CC_ZIP" CHAR(10 OCTETS) , 
		  "CC_COUNTRY" VARCHAR(20 OCTETS) , 
		  "CC_GMT_OFFSET" DECIMAL(5,2) , 
		  "CC_TAX_PERCENTAGE" DECIMAL(5,2) )   
		 DISTRIBUTE BY HASH("CC_CALL_CENTER_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "CALL_CENTER_CURLOAD"

ALTER TABLE "CALL_CENTER_CURLOAD" 
	ADD PRIMARY KEY
		("CC_CALL_CENTER_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "CATALOG_PAGE_CURLOAD"
------------------------------------------------
 

CREATE TABLE "CATALOG_PAGE_CURLOAD"  (
		  "CP_CATALOG_PAGE_SK" BIGINT NOT NULL , 
		  "CP_CATALOG_PAGE_ID" CHAR(16 OCTETS) NOT NULL , 
		  "CP_START_DATE_SK" BIGINT , 
		  "CP_END_DATE_SK" BIGINT , 
		  "CP_DEPARTMENT" VARCHAR(50 OCTETS) , 
		  "CP_CATALOG_NUMBER" BIGINT , 
		  "CP_CATALOG_PAGE_NUMBER" BIGINT , 
		  "CP_DESCRIPTION" VARCHAR(100 OCTETS) , 
		  "CP_TYPE" VARCHAR(100 OCTETS) )   
		 DISTRIBUTE BY HASH("CP_CATALOG_PAGE_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "CATALOG_PAGE_CURLOAD"

ALTER TABLE "CATALOG_PAGE_CURLOAD" 
	ADD PRIMARY KEY
		("CP_CATALOG_PAGE_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "CATALOG_RETURNS_CURLOAD"
------------------------------------------------
 

CREATE TABLE "CATALOG_RETURNS_CURLOAD"  (
		  "CR_RETURNED_DATE_SK" BIGINT , 
		  "CR_RETURNED_TIME_SK" BIGINT , 
		  "CR_ITEM_SK" BIGINT NOT NULL , 
		  "CR_REFUNDED_CUSTOMER_SK" BIGINT , 
		  "CR_REFUNDED_CDEMO_SK" BIGINT , 
		  "CR_REFUNDED_HDEMO_SK" BIGINT , 
		  "CR_REFUNDED_ADDR_SK" BIGINT , 
		  "CR_RETURNING_CUSTOMER_SK" BIGINT , 
		  "CR_RETURNING_CDEMO_SK" BIGINT , 
		  "CR_RETURNING_HDEMO_SK" BIGINT , 
		  "CR_RETURNING_ADDR_SK" BIGINT , 
		  "CR_CALL_CENTER_SK" BIGINT , 
		  "CR_CATALOG_PAGE_SK" BIGINT , 
		  "CR_SHIP_MODE_SK" BIGINT , 
		  "CR_WAREHOUSE_SK" BIGINT , 
		  "CR_REASON_SK" BIGINT , 
		  "CR_ORDER_NUMBER" BIGINT NOT NULL , 
		  "CR_RETURN_QUANTITY" BIGINT , 
		  "CR_RETURN_AMOUNT" DECIMAL(7,2) , 
		  "CR_RETURN_TAX" DECIMAL(7,2) , 
		  "CR_RETURN_AMT_INC_TAX" DECIMAL(7,2) , 
		  "CR_FEE" DECIMAL(7,2) , 
		  "CR_RETURN_SHIP_COST" DECIMAL(7,2) , 
		  "CR_REFUNDED_CASH" DECIMAL(7,2) , 
		  "CR_REVERSED_CHARGE" DECIMAL(7,2) , 
		  "CR_STORE_CREDIT" DECIMAL(7,2) , 
		  "CR_NET_LOSS" DECIMAL(7,2) )   
		 DISTRIBUTE BY HASH("CR_ITEM_SK",  
		 "CR_ORDER_NUMBER")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "CATALOG_RETURNS_CURLOAD"

ALTER TABLE "CATALOG_RETURNS_CURLOAD" 
	ADD PRIMARY KEY
		("CR_ITEM_SK",
		 "CR_ORDER_NUMBER")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "CATALOG_SALES_CURLOAD"
------------------------------------------------
 

CREATE TABLE "CATALOG_SALES_CURLOAD"  (
		  "CS_SOLD_DATE_SK" BIGINT , 
		  "CS_SOLD_TIME_SK" BIGINT , 
		  "CS_SHIP_DATE_SK" BIGINT , 
		  "CS_BILL_CUSTOMER_SK" BIGINT , 
		  "CS_BILL_CDEMO_SK" BIGINT , 
		  "CS_BILL_HDEMO_SK" BIGINT , 
		  "CS_BILL_ADDR_SK" BIGINT , 
		  "CS_SHIP_CUSTOMER_SK" BIGINT , 
		  "CS_SHIP_CDEMO_SK" BIGINT , 
		  "CS_SHIP_HDEMO_SK" BIGINT , 
		  "CS_SHIP_ADDR_SK" BIGINT , 
		  "CS_CALL_CENTER_SK" BIGINT , 
		  "CS_CATALOG_PAGE_SK" BIGINT , 
		  "CS_SHIP_MODE_SK" BIGINT , 
		  "CS_WAREHOUSE_SK" BIGINT , 
		  "CS_ITEM_SK" BIGINT NOT NULL , 
		  "CS_PROMO_SK" BIGINT , 
		  "CS_ORDER_NUMBER" BIGINT NOT NULL , 
		  "CS_QUANTITY" BIGINT , 
		  "CS_WHOLESALE_COST" DECIMAL(7,2) , 
		  "CS_LIST_PRICE" DECIMAL(7,2) , 
		  "CS_SALES_PRICE" DECIMAL(7,2) , 
		  "CS_EXT_DISCOUNT_AMT" DECIMAL(7,2) , 
		  "CS_EXT_SALES_PRICE" DECIMAL(7,2) , 
		  "CS_EXT_WHOLESALE_COST" DECIMAL(7,2) , 
		  "CS_EXT_LIST_PRICE" DECIMAL(7,2) , 
		  "CS_EXT_TAX" DECIMAL(7,2) , 
		  "CS_COUPON_AMT" DECIMAL(7,2) , 
		  "CS_EXT_SHIP_COST" DECIMAL(7,2) , 
		  "CS_NET_PAID" DECIMAL(7,2) , 
		  "CS_NET_PAID_INC_TAX" DECIMAL(7,2) , 
		  "CS_NET_PAID_INC_SHIP" DECIMAL(7,2) , 
		  "CS_NET_PAID_INC_SHIP_TAX" DECIMAL(7,2) , 
		  "CS_NET_PROFIT" DECIMAL(7,2) )   
		 DISTRIBUTE BY HASH("CS_ITEM_SK",  
		 "CS_ORDER_NUMBER")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "CATALOG_SALES_CURLOAD"

ALTER TABLE "CATALOG_SALES_CURLOAD" 
	ADD PRIMARY KEY
		("CS_ITEM_SK",
		 "CS_ORDER_NUMBER")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "CHAR_TEST_CURLOAD"
------------------------------------------------
 

CREATE TABLE "CHAR_TEST_CURLOAD"  (
		  "ASCII_VALUE" CHAR(1 OCTETS) , 
		  "CHARACTER_STRING" VARCHAR(100 OCTETS) , 
		  "DECIMAL_VALUE" INTEGER , 
		  "OCTAL_VALUE" CHAR(3 OCTETS) , 
		  "HEXADECIMAL_VALUE" CHAR(2 OCTETS) , 
		  "DISTRIBUTION_COLUMN" SMALLINT )   
		 DISTRIBUTE BY HASH("DISTRIBUTION_COLUMN")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 






------------------------------------------------
-- DDL Statements for Table "CUSTOMER_CURLOAD"
------------------------------------------------
 

CREATE TABLE "CUSTOMER_CURLOAD"  (
		  "C_CUSTOMER_SK" BIGINT NOT NULL , 
		  "C_CUSTOMER_ID" CHAR(16 OCTETS) NOT NULL , 
		  "C_CURRENT_CDEMO_SK" BIGINT , 
		  "C_CURRENT_HDEMO_SK" BIGINT , 
		  "C_CURRENT_ADDR_SK" BIGINT , 
		  "C_FIRST_SHIPTO_DATE_SK" BIGINT , 
		  "C_FIRST_SALES_DATE_SK" BIGINT , 
		  "C_SALUTATION" CHAR(10 OCTETS) , 
		  "C_FIRST_NAME" VARCHAR(20 OCTETS) , 
		  "C_LAST_NAME" VARCHAR(30 OCTETS) , 
		  "C_PREFERRED_CUST_FLAG" CHAR(1 OCTETS) , 
		  "C_BIRTH_DAY" BIGINT , 
		  "C_BIRTH_MONTH" BIGINT , 
		  "C_BIRTH_YEAR" BIGINT , 
		  "C_BIRTH_COUNTRY" VARCHAR(20 OCTETS) , 
		  "C_LOGIN" CHAR(13 OCTETS) , 
		  "C_EMAIL_ADDRESS" CHAR(50 OCTETS) , 
		  "C_LAST_REVIEW_DATE" CHAR(10 OCTETS) )   
		 DISTRIBUTE BY HASH("C_CUSTOMER_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "CUSTOMER_CURLOAD"

ALTER TABLE "CUSTOMER_CURLOAD" 
	ADD PRIMARY KEY
		("C_CUSTOMER_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "CUSTOMER_ADDRESS_CURLOAD"
------------------------------------------------
 

CREATE TABLE "CUSTOMER_ADDRESS_CURLOAD"  (
		  "CA_ADDRESS_SK" BIGINT NOT NULL , 
		  "CA_ADDRESS_ID" CHAR(16 OCTETS) NOT NULL , 
		  "CA_STREET_NUMBER" CHAR(10 OCTETS) , 
		  "CA_STREET_NAME" VARCHAR(60 OCTETS) , 
		  "CA_STREET_TYPE" CHAR(15 OCTETS) , 
		  "CA_SUITE_NUMBER" CHAR(10 OCTETS) , 
		  "CA_CITY" VARCHAR(60 OCTETS) NOT NULL , 
		  "CA_COUNTY" VARCHAR(30 OCTETS) NOT NULL , 
		  "CA_STATE" CHAR(2 OCTETS) NOT NULL , 
		  "CA_ZIP" CHAR(10 OCTETS) NOT NULL , 
		  "CA_COUNTRY" VARCHAR(20 OCTETS) NOT NULL , 
		  "CA_GMT_OFFSET" DECIMAL(5,2) , 
		  "CA_LOCATION_TYPE" CHAR(20 OCTETS) )   
		 DISTRIBUTE BY HASH("CA_ADDRESS_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "CUSTOMER_ADDRESS_CURLOAD"

ALTER TABLE "CUSTOMER_ADDRESS_CURLOAD" 
	ADD PRIMARY KEY
		("CA_ADDRESS_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "CUSTOMER_DEMOGRAPHICS_CURLOAD"
------------------------------------------------
 

CREATE TABLE "CUSTOMER_DEMOGRAPHICS_CURLOAD"  (
		  "CD_DEMO_SK" BIGINT NOT NULL , 
		  "CD_GENDER" CHAR(1 OCTETS) , 
		  "CD_MARITAL_STATUS" CHAR(1 OCTETS) , 
		  "CD_EDUCATION_STATUS" CHAR(20 OCTETS) , 
		  "CD_PURCHASE_ESTIMATE" BIGINT , 
		  "CD_CREDIT_RATING" CHAR(10 OCTETS) , 
		  "CD_DEP_COUNT" BIGINT , 
		  "CD_DEP_EMPLOYED_COUNT" BIGINT , 
		  "CD_DEP_COLLEGE_COUNT" BIGINT )   
		 DISTRIBUTE BY HASH("CD_DEMO_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "CUSTOMER_DEMOGRAPHICS_CURLOAD"

ALTER TABLE "CUSTOMER_DEMOGRAPHICS_CURLOAD" 
	ADD PRIMARY KEY
		("CD_DEMO_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "DATE_DIM_CURLOAD"
------------------------------------------------
 

CREATE TABLE "DATE_DIM_CURLOAD"  (
		  "D_DATE_SK" BIGINT NOT NULL , 
		  "D_DATE_ID" CHAR(16 OCTETS) NOT NULL , 
		  "D_DATE" DATE NOT NULL , 
		  "D_MONTH_SEQ" BIGINT NOT NULL , 
		  "D_WEEK_SEQ" BIGINT NOT NULL , 
		  "D_QUARTER_SEQ" BIGINT NOT NULL , 
		  "D_YEAR" BIGINT NOT NULL , 
		  "D_DOW" BIGINT NOT NULL , 
		  "D_MOY" BIGINT NOT NULL , 
		  "D_DOM" BIGINT NOT NULL , 
		  "D_QOY" BIGINT NOT NULL , 
		  "D_FY_YEAR" BIGINT , 
		  "D_FY_QUARTER_SEQ" BIGINT , 
		  "D_FY_WEEK_SEQ" BIGINT , 
		  "D_DAY_NAME" CHAR(9 OCTETS) , 
		  "D_QUARTER_NAME" CHAR(6 OCTETS) , 
		  "D_HOLIDAY" CHAR(1 OCTETS) , 
		  "D_WEEKEND" CHAR(1 OCTETS) , 
		  "D_FOLLOWING_HOLIDAY" CHAR(1 OCTETS) , 
		  "D_FIRST_DOM" BIGINT , 
		  "D_LAST_DOM" BIGINT , 
		  "D_SAME_DAY_LY" BIGINT , 
		  "D_SAME_DAY_LQ" BIGINT , 
		  "D_CURRENT_DAY" CHAR(1 OCTETS) , 
		  "D_CURRENT_WEEK" CHAR(1 OCTETS) , 
		  "D_CURRENT_MONTH" CHAR(1 OCTETS) , 
		  "D_CURRENT_QUARTER" CHAR(1 OCTETS) , 
		  "D_CURRENT_YEAR" CHAR(1 OCTETS) )   
		 DISTRIBUTE BY HASH("D_DATE_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "DATE_DIM_CURLOAD"

ALTER TABLE "DATE_DIM_CURLOAD" 
	ADD PRIMARY KEY
		("D_DATE_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "HOUSEHOLD_DEMOGRAPHICS_CURLOAD"
------------------------------------------------
 

CREATE TABLE "HOUSEHOLD_DEMOGRAPHICS_CURLOAD"  (
		  "HD_DEMO_SK" BIGINT NOT NULL , 
		  "HD_INCOME_BAND_SK" BIGINT , 
		  "HD_BUY_POTENTIAL" CHAR(15 OCTETS) NOT NULL , 
		  "HD_DEP_COUNT" BIGINT NOT NULL , 
		  "HD_VEHICLE_COUNT" BIGINT NOT NULL )   
		 DISTRIBUTE BY HASH("HD_DEMO_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "HOUSEHOLD_DEMOGRAPHICS_CURLOAD"

ALTER TABLE "HOUSEHOLD_DEMOGRAPHICS_CURLOAD" 
	ADD PRIMARY KEY
		("HD_DEMO_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "INCOME_BAND_CURLOAD"
------------------------------------------------
 

CREATE TABLE "INCOME_BAND_CURLOAD"  (
		  "IB_INCOME_BAND_SK" BIGINT NOT NULL , 
		  "IB_LOWER_BOUND" BIGINT , 
		  "IB_UPPER_BOUND" BIGINT )   
		 DISTRIBUTE BY HASH("IB_INCOME_BAND_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "INCOME_BAND_CURLOAD"

ALTER TABLE "INCOME_BAND_CURLOAD" 
	ADD PRIMARY KEY
		("IB_INCOME_BAND_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "INVENTORY_CURLOAD"
------------------------------------------------
 

CREATE TABLE "INVENTORY_CURLOAD"  (
		  "INV_DATE_SK" BIGINT NOT NULL , 
		  "INV_ITEM_SK" BIGINT NOT NULL , 
		  "INV_WAREHOUSE_SK" BIGINT NOT NULL , 
		  "INV_QUANTITY_ON_HAND" BIGINT )   
		 DISTRIBUTE BY HASH("INV_DATE_SK",  
		 "INV_ITEM_SK",  
		 "INV_WAREHOUSE_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "INVENTORY_CURLOAD"

ALTER TABLE "INVENTORY_CURLOAD" 
	ADD PRIMARY KEY
		("INV_DATE_SK",
		 "INV_ITEM_SK",
		 "INV_WAREHOUSE_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "ITEM_CURLOAD"
------------------------------------------------
 

CREATE TABLE "ITEM_CURLOAD"  (
		  "I_ITEM_SK" BIGINT NOT NULL , 
		  "I_ITEM_ID" CHAR(16 OCTETS) NOT NULL , 
		  "I_REC_START_DATE" DATE , 
		  "I_REC_END_DATE" DATE , 
		  "I_ITEM_DESC" VARCHAR(200 OCTETS) NOT NULL , 
		  "I_CURRENT_PRICE" DECIMAL(7,2) , 
		  "I_WHOLESALE_COST" DECIMAL(7,2) , 
		  "I_BRAND_ID" BIGINT NOT NULL , 
		  "I_BRAND" VARCHAR(50 OCTETS) NOT NULL , 
		  "I_CLASS_ID" BIGINT NOT NULL , 
		  "I_CLASS" VARCHAR(50 OCTETS) NOT NULL , 
		  "I_CATEGORY_ID" BIGINT NOT NULL , 
		  "I_CATEGORY" VARCHAR(50 OCTETS) NOT NULL , 
		  "I_MANUFACT_ID" BIGINT NOT NULL , 
		  "I_MANUFACT" CHAR(50 OCTETS) NOT NULL , 
		  "I_SIZE" CHAR(20 OCTETS) , 
		  "I_FORMULATION" CHAR(20 OCTETS) , 
		  "I_COLOR" CHAR(20 OCTETS) , 
		  "I_UNITS" CHAR(10 OCTETS) , 
		  "I_CONTAINER" CHAR(10 OCTETS) , 
		  "I_MANAGER_ID" BIGINT NOT NULL , 
		  "I_PRODUCT_NAME" CHAR(50 OCTETS) NOT NULL )   
		 DISTRIBUTE BY HASH("I_ITEM_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "ITEM_CURLOAD"

ALTER TABLE "ITEM_CURLOAD" 
	ADD PRIMARY KEY
		("I_ITEM_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "PROMOTION_CURLOAD"
------------------------------------------------
 

CREATE TABLE "PROMOTION_CURLOAD"  (
		  "P_PROMO_SK" BIGINT NOT NULL , 
		  "P_PROMO_ID" CHAR(16 OCTETS) NOT NULL , 
		  "P_START_DATE_SK" BIGINT , 
		  "P_END_DATE_SK" BIGINT , 
		  "P_ITEM_SK" BIGINT , 
		  "P_COST" DECIMAL(15,2) , 
		  "P_RESPONSE_TARGET" BIGINT , 
		  "P_PROMO_NAME" CHAR(50 OCTETS) , 
		  "P_CHANNEL_DMAIL" CHAR(1 OCTETS) , 
		  "P_CHANNEL_EMAIL" CHAR(1 OCTETS) , 
		  "P_CHANNEL_CATALOG" CHAR(1 OCTETS) , 
		  "P_CHANNEL_TV" CHAR(1 OCTETS) , 
		  "P_CHANNEL_RADIO" CHAR(1 OCTETS) , 
		  "P_CHANNEL_PRESS" CHAR(1 OCTETS) , 
		  "P_CHANNEL_EVENT" CHAR(1 OCTETS) , 
		  "P_CHANNEL_DEMO" CHAR(1 OCTETS) , 
		  "P_CHANNEL_DETAILS" VARCHAR(100 OCTETS) , 
		  "P_PURPOSE" CHAR(15 OCTETS) , 
		  "P_DISCOUNT_ACTIVE" CHAR(1 OCTETS) )   
		 DISTRIBUTE BY HASH("P_PROMO_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "PROMOTION_CURLOAD"

ALTER TABLE "PROMOTION_CURLOAD" 
	ADD PRIMARY KEY
		("P_PROMO_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "REASON_CURLOAD"
------------------------------------------------
 

CREATE TABLE "REASON_CURLOAD"  (
		  "R_REASON_SK" BIGINT NOT NULL , 
		  "R_REASON_ID" CHAR(16 OCTETS) NOT NULL , 
		  "R_REASON_DESC" CHAR(100 OCTETS) )   
		 DISTRIBUTE BY HASH("R_REASON_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "REASON_CURLOAD"

ALTER TABLE "REASON_CURLOAD" 
	ADD PRIMARY KEY
		("R_REASON_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "SHIP_MODE_CURLOAD"
------------------------------------------------
 

CREATE TABLE "SHIP_MODE_CURLOAD"  (
		  "SM_SHIP_MODE_SK" BIGINT NOT NULL , 
		  "SM_SHIP_MODE_ID" CHAR(16 OCTETS) NOT NULL , 
		  "SM_TYPE" CHAR(30 OCTETS) , 
		  "SM_CODE" CHAR(10 OCTETS) , 
		  "SM_CARRIER" CHAR(20 OCTETS) , 
		  "SM_CONTRACT" CHAR(20 OCTETS) )   
		 DISTRIBUTE BY HASH("SM_SHIP_MODE_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "SHIP_MODE_CURLOAD"

ALTER TABLE "SHIP_MODE_CURLOAD" 
	ADD PRIMARY KEY
		("SM_SHIP_MODE_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "STORE_CURLOAD"
------------------------------------------------
 

CREATE TABLE "STORE_CURLOAD"  (
		  "S_STORE_SK" BIGINT NOT NULL , 
		  "S_STORE_ID" CHAR(16 OCTETS) NOT NULL , 
		  "S_REC_START_DATE" DATE , 
		  "S_REC_END_DATE" DATE , 
		  "S_CLOSED_DATE_SK" BIGINT , 
		  "S_STORE_NAME" VARCHAR(50 OCTETS) NOT NULL , 
		  "S_NUMBER_EMPLOYEES" BIGINT , 
		  "S_FLOOR_SPACE" BIGINT , 
		  "S_HOURS" CHAR(20 OCTETS) , 
		  "S_MANAGER" VARCHAR(40 OCTETS) NOT NULL , 
		  "S_MARKET_ID" BIGINT NOT NULL , 
		  "S_GEOGRAPHY_CLASS" VARCHAR(100 OCTETS) NOT NULL , 
		  "S_MARKET_DESC" VARCHAR(100 OCTETS) NOT NULL , 
		  "S_MARKET_MANAGER" VARCHAR(40 OCTETS) NOT NULL , 
		  "S_DIVISION_ID" BIGINT NOT NULL , 
		  "S_DIVISION_NAME" VARCHAR(50 OCTETS) NOT NULL , 
		  "S_COMPANY_ID" BIGINT NOT NULL , 
		  "S_COMPANY_NAME" VARCHAR(50 OCTETS) NOT NULL , 
		  "S_STREET_NUMBER" VARCHAR(10 OCTETS) , 
		  "S_STREET_NAME" VARCHAR(60 OCTETS) , 
		  "S_STREET_TYPE" CHAR(15 OCTETS) , 
		  "S_SUITE_NUMBER" CHAR(10 OCTETS) , 
		  "S_CITY" VARCHAR(60 OCTETS) NOT NULL , 
		  "S_COUNTY" VARCHAR(30 OCTETS) NOT NULL , 
		  "S_STATE" CHAR(2 OCTETS) NOT NULL , 
		  "S_ZIP" CHAR(10 OCTETS) NOT NULL , 
		  "S_COUNTRY" VARCHAR(20 OCTETS) NOT NULL , 
		  "S_GMT_OFFSET" DECIMAL(5,2) , 
		  "S_TAX_PERCENTAGE" DECIMAL(5,2) )   
		 DISTRIBUTE BY HASH("S_STORE_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "STORE_CURLOAD"

ALTER TABLE "STORE_CURLOAD" 
	ADD PRIMARY KEY
		("S_STORE_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "STORE_RETURNS_CURLOAD"
------------------------------------------------
 

CREATE TABLE "STORE_RETURNS_CURLOAD"  (
		  "SR_RETURNED_DATE_SK" BIGINT , 
		  "SR_RETURN_TIME_SK" BIGINT , 
		  "SR_ITEM_SK" BIGINT NOT NULL , 
		  "SR_CUSTOMER_SK" BIGINT , 
		  "SR_CDEMO_SK" BIGINT , 
		  "SR_HDEMO_SK" BIGINT , 
		  "SR_ADDR_SK" BIGINT , 
		  "SR_STORE_SK" BIGINT , 
		  "SR_REASON_SK" BIGINT , 
		  "SR_TICKET_NUMBER" BIGINT NOT NULL , 
		  "SR_RETURN_QUANTITY" BIGINT , 
		  "SR_RETURN_AMT" DECIMAL(7,2) , 
		  "SR_RETURN_TAX" DECIMAL(7,2) , 
		  "SR_RETURN_AMT_INC_TAX" DECIMAL(7,2) , 
		  "SR_FEE" DECIMAL(7,2) , 
		  "SR_RETURN_SHIP_COST" DECIMAL(7,2) , 
		  "SR_REFUNDED_CASH" DECIMAL(7,2) , 
		  "SR_REVERSED_CHARGE" DECIMAL(7,2) , 
		  "SR_STORE_CREDIT" DECIMAL(7,2) , 
		  "SR_NET_LOSS" DECIMAL(7,2) )   
		 DISTRIBUTE BY HASH("SR_ITEM_SK",  
		 "SR_TICKET_NUMBER")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "STORE_RETURNS_CURLOAD"

ALTER TABLE "STORE_RETURNS_CURLOAD" 
	ADD PRIMARY KEY
		("SR_ITEM_SK",
		 "SR_TICKET_NUMBER")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "STORE_SALES_CURLOAD"
------------------------------------------------
 

CREATE TABLE "STORE_SALES_CURLOAD"  (
		  "SS_SOLD_DATE_SK" BIGINT NOT NULL , 
		  "SS_SOLD_TIME_SK" BIGINT NOT NULL , 
		  "SS_ITEM_SK" BIGINT NOT NULL , 
		  "SS_CUSTOMER_SK" BIGINT NOT NULL , 
		  "SS_CDEMO_SK" BIGINT NOT NULL , 
		  "SS_HDEMO_SK" BIGINT NOT NULL , 
		  "SS_ADDR_SK" BIGINT NOT NULL , 
		  "SS_STORE_SK" BIGINT NOT NULL , 
		  "SS_PROMO_SK" BIGINT NOT NULL , 
		  "SS_TICKET_NUMBER" BIGINT NOT NULL , 
		  "SS_QUANTITY" BIGINT , 
		  "SS_WHOLESALE_COST" DECIMAL(7,2) , 
		  "SS_LIST_PRICE" DECIMAL(7,2) , 
		  "SS_SALES_PRICE" DECIMAL(7,2) , 
		  "SS_EXT_DISCOUNT_AMT" DECIMAL(7,2) , 
		  "SS_EXT_SALES_PRICE" DECIMAL(7,2) , 
		  "SS_EXT_WHOLESALE_COST" DECIMAL(7,2) , 
		  "SS_EXT_LIST_PRICE" DECIMAL(7,2) , 
		  "SS_EXT_TAX" DECIMAL(7,2) , 
		  "SS_COUPON_AMT" DECIMAL(7,2) , 
		  "SS_NET_PAID" DECIMAL(7,2) , 
		  "SS_NET_PAID_INC_TAX" DECIMAL(7,2) , 
		  "SS_NET_PROFIT" DECIMAL(7,2) )   
		 DISTRIBUTE BY HASH("SS_ITEM_SK",  
		 "SS_TICKET_NUMBER")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "STORE_SALES_CURLOAD"

ALTER TABLE "STORE_SALES_CURLOAD" 
	ADD PRIMARY KEY
		("SS_ITEM_SK",
		 "SS_TICKET_NUMBER")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "TIME_DIM_CURLOAD"
------------------------------------------------
 

CREATE TABLE "TIME_DIM_CURLOAD"  (
		  "T_TIME_SK" BIGINT NOT NULL , 
		  "T_TIME_ID" CHAR(16 OCTETS) NOT NULL , 
		  "T_TIME" BIGINT NOT NULL , 
		  "T_HOUR" BIGINT NOT NULL , 
		  "T_MINUTE" BIGINT NOT NULL , 
		  "T_SECOND" BIGINT NOT NULL , 
		  "T_AM_PM" CHAR(2 OCTETS) NOT NULL , 
		  "T_SHIFT" CHAR(20 OCTETS) NOT NULL , 
		  "T_SUB_SHIFT" CHAR(20 OCTETS) NOT NULL , 
		  "T_MEAL_TIME" CHAR(20 OCTETS) NOT NULL )   
		 DISTRIBUTE BY HASH("T_TIME_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "TIME_DIM_CURLOAD"

ALTER TABLE "TIME_DIM_CURLOAD" 
	ADD PRIMARY KEY
		("T_TIME_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "UTF8_TEST_CURLOAD"
------------------------------------------------
 

CREATE TABLE "UTF8_TEST_CURLOAD"  (
		  "BASE_LANGUAGE" VARCHAR(50 OCTETS) , 
		  "SAMPLE_STRING" VARCHAR(200 CODEUNITS32) , 
		  "DISTRIBUTION_COLUMN" INTEGER )   
		 DISTRIBUTE BY HASH("DISTRIBUTION_COLUMN")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 






------------------------------------------------
-- DDL Statements for Table "WAREHOUSE_CURLOAD"
------------------------------------------------
 

CREATE TABLE "WAREHOUSE_CURLOAD"  (
		  "W_WAREHOUSE_SK" BIGINT NOT NULL , 
		  "W_WAREHOUSE_ID" CHAR(16 OCTETS) NOT NULL , 
		  "W_WAREHOUSE_NAME" VARCHAR(20 OCTETS) , 
		  "W_WAREHOUSE_SQ_FT" BIGINT , 
		  "W_STREET_NUMBER" CHAR(10 OCTETS) , 
		  "W_STREET_NAME" VARCHAR(60 OCTETS) , 
		  "W_STREET_TYPE" CHAR(15 OCTETS) , 
		  "W_SUITE_NUMBER" CHAR(10 OCTETS) , 
		  "W_CITY" VARCHAR(60 OCTETS) , 
		  "W_COUNTY" VARCHAR(30 OCTETS) , 
		  "W_STATE" CHAR(2 OCTETS) , 
		  "W_ZIP" CHAR(10 OCTETS) , 
		  "W_COUNTRY" VARCHAR(20 OCTETS) , 
		  "W_GMT_OFFSET" DECIMAL(5,2) )   
		 DISTRIBUTE BY HASH("W_WAREHOUSE_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "WAREHOUSE_CURLOAD"

ALTER TABLE "WAREHOUSE_CURLOAD" 
	ADD PRIMARY KEY
		("W_WAREHOUSE_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "WEB_PAGE_CURLOAD"
------------------------------------------------
 

CREATE TABLE "WEB_PAGE_CURLOAD"  (
		  "WP_WEB_PAGE_SK" BIGINT NOT NULL , 
		  "WP_WEB_PAGE_ID" CHAR(16 OCTETS) NOT NULL , 
		  "WP_REC_START_DATE" DATE , 
		  "WP_REC_END_DATE" DATE , 
		  "WP_CREATION_DATE_SK" BIGINT , 
		  "WP_ACCESS_DATE_SK" BIGINT , 
		  "WP_AUTOGEN_FLAG" CHAR(1 OCTETS) , 
		  "WP_CUSTOMER_SK" BIGINT , 
		  "WP_URL" VARCHAR(100 OCTETS) , 
		  "WP_TYPE" CHAR(50 OCTETS) , 
		  "WP_CHAR_COUNT" BIGINT , 
		  "WP_LINK_COUNT" BIGINT , 
		  "WP_IMAGE_COUNT" BIGINT , 
		  "WP_MAX_AD_COUNT" BIGINT )   
		 DISTRIBUTE BY HASH("WP_WEB_PAGE_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "WEB_PAGE_CURLOAD"

ALTER TABLE "WEB_PAGE_CURLOAD" 
	ADD PRIMARY KEY
		("WP_WEB_PAGE_SK")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "WEB_RETURNS_CURLOAD"
------------------------------------------------
 

CREATE TABLE "WEB_RETURNS_CURLOAD"  (
		  "WR_RETURNED_DATE_SK" BIGINT , 
		  "WR_RETURNED_TIME_SK" BIGINT , 
		  "WR_ITEM_SK" BIGINT NOT NULL , 
		  "WR_REFUNDED_CUSTOMER_SK" BIGINT , 
		  "WR_REFUNDED_CDEMO_SK" BIGINT , 
		  "WR_REFUNDED_HDEMO_SK" BIGINT , 
		  "WR_REFUNDED_ADDR_SK" BIGINT , 
		  "WR_RETURNING_CUSTOMER_SK" BIGINT , 
		  "WR_RETURNING_CDEMO_SK" BIGINT , 
		  "WR_RETURNING_HDEMO_SK" BIGINT , 
		  "WR_RETURNING_ADDR_SK" BIGINT , 
		  "WR_WEB_PAGE_SK" BIGINT , 
		  "WR_REASON_SK" BIGINT , 
		  "WR_ORDER_NUMBER" BIGINT NOT NULL , 
		  "WR_RETURN_QUANTITY" BIGINT , 
		  "WR_RETURN_AMT" DECIMAL(7,2) , 
		  "WR_RETURN_TAX" DECIMAL(7,2) , 
		  "WR_RETURN_AMT_INC_TAX" DECIMAL(7,2) , 
		  "WR_FEE" DECIMAL(7,2) , 
		  "WR_RETURN_SHIP_COST" DECIMAL(7,2) , 
		  "WR_REFUNDED_CASH" DECIMAL(7,2) , 
		  "WR_REVERSED_CHARGE" DECIMAL(7,2) , 
		  "WR_ACCOUNT_CREDIT" DECIMAL(7,2) , 
		  "WR_NET_LOSS" DECIMAL(7,2) )   
		 DISTRIBUTE BY HASH("WR_ITEM_SK",  
		 "WR_ORDER_NUMBER")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "WEB_RETURNS_CURLOAD"

ALTER TABLE "WEB_RETURNS_CURLOAD" 
	ADD PRIMARY KEY
		("WR_ITEM_SK",
		 "WR_ORDER_NUMBER")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "WEB_SALES_CURLOAD"
------------------------------------------------
 

CREATE TABLE "WEB_SALES_CURLOAD"  (
		  "WS_SOLD_DATE_SK" BIGINT , 
		  "WS_SOLD_TIME_SK" BIGINT , 
		  "WS_SHIP_DATE_SK" BIGINT , 
		  "WS_ITEM_SK" BIGINT NOT NULL , 
		  "WS_BILL_CUSTOMER_SK" BIGINT , 
		  "WS_BILL_CDEMO_SK" BIGINT , 
		  "WS_BILL_HDEMO_SK" BIGINT , 
		  "WS_BILL_ADDR_SK" BIGINT , 
		  "WS_SHIP_CUSTOMER_SK" BIGINT , 
		  "WS_SHIP_CDEMO_SK" BIGINT , 
		  "WS_SHIP_HDEMO_SK" BIGINT , 
		  "WS_SHIP_ADDR_SK" BIGINT , 
		  "WS_WEB_PAGE_SK" BIGINT , 
		  "WS_WEB_SITE_SK" BIGINT , 
		  "WS_SHIP_MODE_SK" BIGINT , 
		  "WS_WAREHOUSE_SK" BIGINT , 
		  "WS_PROMO_SK" BIGINT , 
		  "WS_ORDER_NUMBER" BIGINT NOT NULL , 
		  "WS_QUANTITY" BIGINT , 
		  "WS_WHOLESALE_COST" DECIMAL(7,2) , 
		  "WS_LIST_PRICE" DECIMAL(7,2) , 
		  "WS_SALES_PRICE" DECIMAL(7,2) , 
		  "WS_EXT_DISCOUNT_AMT" DECIMAL(7,2) , 
		  "WS_EXT_SALES_PRICE" DECIMAL(7,2) , 
		  "WS_EXT_WHOLESALE_COST" DECIMAL(7,2) , 
		  "WS_EXT_LIST_PRICE" DECIMAL(7,2) , 
		  "WS_EXT_TAX" DECIMAL(7,2) , 
		  "WS_COUPON_AMT" DECIMAL(7,2) , 
		  "WS_EXT_SHIP_COST" DECIMAL(7,2) , 
		  "WS_NET_PAID" DECIMAL(7,2) , 
		  "WS_NET_PAID_INC_TAX" DECIMAL(7,2) , 
		  "WS_NET_PAID_INC_SHIP" DECIMAL(7,2) , 
		  "WS_NET_PAID_INC_SHIP_TAX" DECIMAL(7,2) , 
		  "WS_NET_PROFIT" DECIMAL(7,2) )   
		 DISTRIBUTE BY HASH("WS_ITEM_SK",  
		 "WS_ORDER_NUMBER")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "WEB_SALES_CURLOAD"

ALTER TABLE "WEB_SALES_CURLOAD" 
	ADD PRIMARY KEY
		("WS_ITEM_SK",
		 "WS_ORDER_NUMBER")
	NOT ENFORCED;



------------------------------------------------
-- DDL Statements for Table "WEB_SITE_CURLOAD"
------------------------------------------------
 

CREATE TABLE "WEB_SITE_CURLOAD"  (
		  "WEB_SITE_SK" BIGINT NOT NULL , 
		  "WEB_SITE_ID" CHAR(16 OCTETS) NOT NULL , 
		  "WEB_REC_START_DATE" DATE , 
		  "WEB_REC_END_DATE" DATE , 
		  "WEB_NAME" VARCHAR(50 OCTETS) , 
		  "WEB_OPEN_DATE_SK" BIGINT , 
		  "WEB_CLOSE_DATE_SK" BIGINT , 
		  "WEB_CLASS" VARCHAR(50 OCTETS) , 
		  "WEB_MANAGER" VARCHAR(40 OCTETS) , 
		  "WEB_MKT_ID" BIGINT , 
		  "WEB_MKT_CLASS" VARCHAR(50 OCTETS) , 
		  "WEB_MKT_DESC" VARCHAR(100 OCTETS) , 
		  "WEB_MARKET_MANAGER" VARCHAR(40 OCTETS) , 
		  "WEB_COMPANY_ID" BIGINT , 
		  "WEB_COMPANY_NAME" CHAR(50 OCTETS) , 
		  "WEB_STREET_NUMBER" CHAR(10 OCTETS) , 
		  "WEB_STREET_NAME" VARCHAR(60 OCTETS) , 
		  "WEB_STREET_TYPE" CHAR(15 OCTETS) , 
		  "WEB_SUITE_NUMBER" CHAR(10 OCTETS) , 
		  "WEB_CITY" VARCHAR(60 OCTETS) , 
		  "WEB_COUNTY" VARCHAR(30 OCTETS) , 
		  "WEB_STATE" CHAR(2 OCTETS) , 
		  "WEB_ZIP" CHAR(10 OCTETS) , 
		  "WEB_COUNTRY" VARCHAR(20 OCTETS) , 
		  "WEB_GMT_OFFSET" DECIMAL(5,2) , 
		  "WEB_TAX_PERCENTAGE" DECIMAL(5,2) )   
		 DISTRIBUTE BY HASH("WEB_SITE_SK")   
		   IN "USERSPACE1"  
		 ORGANIZE BY COLUMN; 


-- DDL Statements for Primary Key on Table "WEB_SITE_CURLOAD"

ALTER TABLE "WEB_SITE_CURLOAD" 
	ADD PRIMARY KEY
		("WEB_SITE_SK")
	NOT ENFORCED;



