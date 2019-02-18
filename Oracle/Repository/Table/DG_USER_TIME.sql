-- =========================================================================================================
-- The table stores the time entry for the User/Employee by Work Date and related information
-- DGC_USER_TIME_STATUS
--  The status is managed in conjunctionw with the status in DG_USER_TIME_PERIOD table.
--	1000 - ACTIVE 	- Open for user to enter time
--	2000 - INACTIVE - Not Active for Time Entry
--	3000 - SUBMITTED - Submitted for Approval
--	4000 - APPROVED
--  5000 - REJECTED
--  9999 - DELETED
-- DGC_INTERNAL_UNIQUE_ID
--	Unique Assigned Created on the tablet to uniquely track TS entries. This is used internally.  
-- DGC_CURRENCY_FX and DGC_CURRENCY_FX_DATE stores the currency conversion rate and date (for the rate)
-- if the DGC_WORK_AMOUNT is not in BASE CURRENCY CODE.
-- DGC_RATE_FACTOR is applicable for overtime hours. The employee might be paid 1.5 times the original rate.
-- DGC_DGLN_KEY_X is defined to support future DataGlance implementation
-- DGC_SOURCE_KEY_TYPE and DGC_SOURCE_KEY stores the Source (AS, Maximo, etc.) specific key values.
-- DGC_SOURCE_KEY_X is defined to support additonal Source Key
-- ==========================================================================================================
CREATE TABLE DG_USER_TIME
(
 DGC_ID 						CHAR(20) 		NOT NULL,
 DGC_FK_COMPANY_ID				CHAR(20)		NOT NULL,
 DGC_FK_USER_ID					CHAR(20)		NOT NULL,
 DGC_FK_COMPANY_GROUP_ID		CHAR(20),
 DGC_WORK_DATE					DATE			NOT NULL,
 DGC_USER_TIME_STATUS			INTEGER			NOT NULL,
 DGC_USER_TIME_STATUS_DATE		TIMESTAMP		NOT NULL,
 DGC_SOURCE_CODE				INTEGER			NOT NULL,
 DGC_FK_DOCUMENT_ID				CHAR(20),
 DGC_DGLN_KEY_1					CHAR(20),
 DGC_DGLN_KEY_2					CHAR(20),
 DGC_DGLN_KEY_3					CHAR(20),
 DGC_DGLN_KEY_4					CHAR(20),
 DGC_DGLN_KEY_5					CHAR(20),
 DGC_SOURCE_KEY_TYPE			INTEGER,
 DGC_SOURCE_KEY					VARCHAR2(32),
 DGC_SOURCE_KEY_1				VARCHAR2(32),
 DGC_SOURCE_KEY_2				VARCHAR2(32),
 DGC_SOURCE_KEY_3				VARCHAR2(32),
 DGC_SOURCE_KEY_4				VARCHAR2(32),
 DGC_SOURCE_KEY_5				VARCHAR2(32), 
 DGC_WORK_START_DATE			TIMESTAMP,
 DGC_WORK_END_DATE				TIMESTAMP,
 DGC_WORK_HOURS					DECIMAL(8,4)	NOT NULL,
 DGC_WORK_HOURS_OT				DECIMAL(8,4)	NOT NULL,
 DGC_WORK_HOURS_PREMIUM			DECIMAL(8,4)	NOT NULL,
 DGC_WORK_AMOUNT				DECIMAL(10,4),
 DGC_AMOUNT_CURRENCY_CODE		INTEGER,
 DGC_WORK_RATE					DECIMAL(10,4),
 DGC_OT_RATE_FACTOR				DECIMAL(10,4),
 DGC_PREMIUM_RATE_FACTOR		DECIMAL(10,4),
 DGC_RATE_CURRENCY_CODE			INTEGER,
 DGC_CURRENCY_FX				DECIMAL(10,4),
 DGC_CURRENCY_FX_DATE			TIMESTAMP,
 DGC_CREATED_FK_USER_ID 		CHAR(20)		NOT NULL,
 DGC_CREATED_DATE	 			TIMESTAMP 		NOT NULL,
 DGC_FK_DEVICE_IDENTITY_ID  	CHAR(20),
 DGC_INTERNAL_UNIQUE_ID			VARCHAR2(32),
 DGC_UPDATED_FK_USER_ID 		CHAR(20)		NOT NULL,
 DGC_UPDATED_DATE	 			TIMESTAMP 		NOT NULL,
 DGC_COMMENTS               	VARCHAR2(2000)
)
;