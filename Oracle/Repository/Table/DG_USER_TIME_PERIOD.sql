-- =========================================================================================================
-- The table stores the time entry period for the User/Employee
--  The Entry in this table is created when the first entry is created in DG_USER_TIME table.
-- DGC_USER_TIME_PERIOD_STATUS
--	1000 - ACTIVE 	 - User is entering the Time for this period.
--	2000 - INACTIVE  - User cannot enter time for this period.
--	3000 - SUBMITTED - User has submitted the time for this period for approval.
--	4000 - APPROVED  - The Timesheet is Approved.
--  5000 - REJECTED	 - Time Period is REJECTED.
--  9999 - DELETED	 - Time Period is deleted. 
-- DGC_EMPLOYEE_KEY
--	Key Value like Employee Id from the Source System, identified by DGC_SOURCE_CODE
-- DGC_SOURCE_KEY_X is added to support Additional Custom Key Field from Source
-- ==========================================================================================================
CREATE TABLE DG_USER_TIME_PERIOD
(
 DGC_ID 						CHAR(20) 		NOT NULL,
 DGC_FK_COMPANY_ID				CHAR(20)		NOT NULL,
 DGC_FK_USER_ID					CHAR(20)		NOT NULL,
 DGC_FK_TIME_PERIOD_ID			CHAR(20)		NOT NULL,
 DGC_USER_TIME_PERIOD_STATUS	INTEGER			NOT NULL,
 DGC_USER_TIME_PERIOD_STATUS_DT	TIMESTAMP		NOT NULL,
 DGC_SOURCE_CODE				INTEGER			NOT NULL,
 DGC_EMPLOYEE_KEY				VARCHAR2(32),
 DGC_SOURCE_KEY_1				VARCHAR2(32),
 DGC_SOURCE_KEY_2				VARCHAR2(32),
 DGC_SOURCE_KEY_3				VARCHAR2(32),
 DGC_CREATED_FK_USER_ID 		CHAR(20)		NOT NULL,
 DGC_CREATED_DATE	 			TIMESTAMP 		NOT NULL,
 DGC_UPDATED_FK_USER_ID 		CHAR(20)		NOT NULL,
 DGC_UPDATED_DATE	 			TIMESTAMP 		NOT NULL,
 DGC_COMMENTS					VARCHAR2(2000) 
)
;