CREATE OR REPLACE FORCE VIEW DG_USER_TIME_V  
(
  DGC_ID ,
  DGC_COMPANY_ID ,
  DGC_COMPANY_GROUP_ID ,
  DGC_PERSONNEL_ID ,
  DGC_PERSONNEL_NAME ,
  DGC_WORK_DATE ,
  DGC_USER_TIME_STATUS ,
  DGC_USER_TIME_STATUS_DATE ,
  DGC_SOURCE_CODE ,
  DGC_DOCUMENT_ID ,
  DGC_DGLN_KEY_1 ,
  DGC_DGLN_KEY_2 ,
  DGC_DGLN_KEY_3 ,
  DGC_DGLN_KEY_4 ,
  DGC_DGLN_KEY_5 ,
  DGC_SOURCE_KEY_TYPE ,
  DGC_SOURCE_KEY ,
  DGC_SOURCE_KEY_1 ,
  DGC_SOURCE_KEY_2 ,
  DGC_SOURCE_KEY_3 ,
  DGC_SOURCE_KEY_4 , 
  DGC_SOURCE_KEY_5 ,
  DGC_WORK_START_DATE ,
  DGC_WORK_END_DATE ,
  DGC_WORK_HOURS ,
  DGC_WORK_HOURS_OT ,
  DGC_WORK_HOURS_PREMIUM ,
  DGC_WORK_AMOUNT ,
  DGC_AMOUNT_CURRENCY_CODE ,
  DGC_WORK_RATE ,
  DGC_OT_RATE_FACTOR ,
  DGC_PREMIUM_RATE_FACTOR ,
  DGC_RATE_CURRENCY_CODE ,
  DGC_CURRENCY_FX ,
  DGC_CURRENCY_FX_DATE ,
  DGC_USER_ID ,
  DGC_USER_NAME ,
  DGC_USER_DISPLAY_NAME ,
  DGC_CREATED_USER_ID ,
  DGC_CREATED_USER_NAME ,
  DGC_CREATED_USER_DISPLAY_NAME ,
  DGC_CREATED_DATE ,
  DGC_DEVICE_IDENTITY_ID ,
  DGC_INTERNAL_UNIQUE_ID ,
  DGC_UPDATED_USER_ID ,
  DGC_UPDATED_USER_NAME ,
  DGC_UPDATED_USER_DISPLAY_NAME ,
  DGC_UPDATED_DATE ,
  DGC_COMMENTS 
 ) 
AS 
(
select
 DUT.DGC_ID,
 DUT.DGC_FK_COMPANY_ID,
 DUT.DGC_FK_COMPANY_GROUP_ID,
 DUT.DGC_PERSONNEL_ID,
 ' ',
 DUT.DGC_WORK_DATE,
 DUT.DGC_USER_TIME_STATUS,
 DUT.DGC_USER_TIME_STATUS_DATE,
 DUT.DGC_SOURCE_CODE,
 DUT.DGC_FK_DOCUMENT_ID,
 DUT.DGC_DGLN_KEY_1,
 DUT.DGC_DGLN_KEY_2,
 DUT.DGC_DGLN_KEY_3,
 DUT.DGC_DGLN_KEY_4,
 DUT.DGC_DGLN_KEY_5,
 DUT.DGC_SOURCE_KEY_TYPE,
 DUT.DGC_SOURCE_KEY,
 DUT.DGC_SOURCE_KEY_1,
 DUT.DGC_SOURCE_KEY_2,
 DUT.DGC_SOURCE_KEY_3,
 DUT.DGC_SOURCE_KEY_4,
 DUT.DGC_SOURCE_KEY_5, 
 DUT.DGC_WORK_START_DATE,
 DUT.DGC_WORK_END_DATE,
 DUT.DGC_WORK_HOURS,
 DUT.DGC_WORK_HOURS_OT,
 DUT.DGC_WORK_HOURS_PREMIUM,
 DUT.DGC_WORK_AMOUNT,
 DUT.DGC_AMOUNT_CURRENCY_CODE,
 DUT.DGC_WORK_RATE,
 DUT.DGC_OT_RATE_FACTOR,
 DUT.DGC_PREMIUM_RATE_FACTOR,
 DUT.DGC_RATE_CURRENCY_CODE,
 DUT.DGC_CURRENCY_FX,
 DUT.DGC_CURRENCY_FX_DATE,
 DUT.DGC_FK_USER_ID,
 DUE.DGC_USER_NAME,
 DUE.DGC_DISPLAY_NAME,
 DUT.DGC_CREATED_FK_USER_ID,
 DUC.DGC_USER_NAME,
 DUC.DGC_DISPLAY_NAME,
 DUT.DGC_CREATED_DATE,
 DUT.DGC_FK_DEVICE_IDENTITY_ID,
 DUT.DGC_INTERNAL_UNIQUE_ID,
 DUT.DGC_UPDATED_FK_USER_ID,
 DUU.DGC_USER_NAME,
 DUU.DGC_DISPLAY_NAME,
 DUT.DGC_UPDATED_DATE,
 DUT.DGC_COMMENTS
from DG_USER_TIME    DUT,
	 DG_USER_LOGIN_V DUE,
	 DG_USER_LOGIN_V DUC,
	 DG_USER_LOGIN_V DUU
where DUT.DGC_FK_USER_ID         = DUE.DGC_ID
  and DUT.DGC_CREATED_FK_USER_ID = DUC.DGC_ID
  and DUT.DGC_UPDATED_FK_USER_ID = DUU.DGC_ID
);
