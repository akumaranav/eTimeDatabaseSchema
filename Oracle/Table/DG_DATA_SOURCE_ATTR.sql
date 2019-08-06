CREATE TABLE DG_DATA_SOURCE_ATTR  
( 	
	 DGC_ID  						CHAR(20)        NOT NULL, 
	 DGC_FK_COMPANY_ID 		    	CHAR(20)        NOT NULL,
	 DGC_FK_DATA_SOURCE_ID  		CHAR(20)        NOT NULL,
	 DGC_ATTR_NAME 					VARCHAR2(255)   NOT NULL,
	 DGC_ATTR_VALUE  				VARCHAR2(2000),
	 DGC_ATTR_REQUIRED  			VARCHAR2(1)    	NOT NULL,
	 DGC_CREATED_FK_USER_ID 		CHAR(20)		NOT NULL,
	 DGC_CREATED_DATE  				TIMESTAMP 		NOT NULL,
	 DGC_UPDATED_FK_USER_ID  		CHAR(20)		NOT NULL,
	 DGC_UPDATED_DATE  				TIMESTAMP 		NOT NULL
);