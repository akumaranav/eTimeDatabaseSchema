-- =========================================================================================================
-- The table stores time entered by the user due to Delay
-- DGC_USER_TIME_STATUS
--	1000 - ACTIVE 	- Open for user to enter time
--	2000 - INACTIVE - Not Active for Time Entry
--	3000 - SUBMITTED - Submitted for Approval
--	4000 - APPROVED
--  5000 - REJECTED
--  9999 - DELETED
-- DGC_INTERNAL_UNIQUE_ID
--	Unique Assigned Created on the tablet to uniquely track TS entries  
-- DGC_CURRENCY_RATE and DGC_CURRENCY_RATE_DATE stores the currency conversion rate and date (for the rate)
-- if the DGC_WORK_AMOUNT is not in BASE CURRENCY CODE.
-- DGC_RATE_FACTOR is applicable for overtime hours. The employee might be paid 1.5 times the original rate.
-- DGC_FK_COMPANY_PROJECT_ID & DGC_FK_COMPANY_TASK_ID is used for internal implementation in the future.
-- DGC_CUSTOM_KEY_X is defined to support future DataGlance implementation
-- ==========================================================================================================
CREATE TABLE DG_USER_TIME_DELAY
(
 DGC_ID 						CHAR(20) 		NOT NULL,
 DGC_FK_COMPANY_ID				CHAR(20)		NOT NULL,
 DGC_FK_USER_ID					CHAR(20)		NOT NULL,
 DGC_FK_COMPANY_GROUP_ID		CHAR(20),
 DGC_WORK_DATE					DATE			NOT NULL,
 DGC_TIME_DELAY_STATUS			INTEGER			NOT NULL,
 DGC_TIME_DELAY_STATUS_DATE		TIMESTAMP		NOT NULL,
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
 DGC_DELAY_TYPE					INTEGER,
 DGC_DELAY_CODE					INTEGER,
 DGC_SOURCE_DELAY_TYPE			VARCHAR2(32),
 DGC_SOURCE_DELAY_CODE			VARCHAR2(32),
 DGC_DELAY_START_DATE			TIMESTAMP,
 DGC_DELAY_END_DATE				TIMESTAMP,
 DGC_DELAY_HOURS				DECIMAL(8,4)	NOT NULL,
 DGC_CREATED_FK_USER_ID 		CHAR(20)		NOT NULL,
 DGC_CREATED_DATE	 			TIMESTAMP 		NOT NULL,
 DGC_FK_DEVICE_IDENTITY_ID  	CHAR(20),
 DGC_INTERNAL_UNIQUE_ID			VARCHAR2(32),
 DGC_UPDATED_FK_USER_ID 		CHAR(20)		NOT NULL,
 DGC_UPDATED_DATE	 			TIMESTAMP 		NOT NULL,
 DGC_COMMENTS               	VARCHAR2(2000)
)
;