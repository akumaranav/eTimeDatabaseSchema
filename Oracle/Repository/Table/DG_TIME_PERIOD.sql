-- =========================================================================================================
-- The table stores the time entry period
-- DGC_TIME_PERIOD_KEY - Unique Id Assigned to the PERIOD (START_DATE & END_DATE)
--	Example: YYYY-WK (2019-01 to 2019-52)
-- DGC_TIME_PERIOD_STATUS
--	1000 - ACTIVE 	- Open for user to enter time
--	2000 - INACTIVE - Not Active for Time Entry
--	3000 - CLOSED 	- Period is closed for new time entry
-- Using DGC_FK_COMPANY_GROUP_ID, different Time Period can be set by Facility and other combination
-- ==========================================================================================================
CREATE TABLE DG_TIME_PERIOD
(
 DGC_ID 						CHAR(20) 		NOT NULL,
 DGC_FK_COMPANY_ID				CHAR(20)		NOT NULL,
 DGC_FK_COMPANY_GROUP_ID		CHAR(20),
 DGC_TIME_PERIOD_KEY			VARCHAR2(32)	NOT NULL,
 DGC_START_DATE					TIMESTAMP		NOT NULL,
 DGC_END_DATE					TIMESTAMP		NOT NULL,
 DGC_TIME_PERIOD_STATUS			INTEGER			NOT NULL,
 DGC_TIME_PERIOD_STATUS_DATE	TIMESTAMP		NOT NULL,
 DGC_CREATED_FK_USER_ID 		CHAR(20)		NOT NULL,
 DGC_CREATED_DATE	 			TIMESTAMP 		NOT NULL,
 DGC_UPDATED_FK_USER_ID 		CHAR(20)		NOT NULL,
 DGC_UPDATED_DATE	 			TIMESTAMP 		NOT NULL,
 DGC_COMMENTS					VARCHAR2(2000)
)
;
