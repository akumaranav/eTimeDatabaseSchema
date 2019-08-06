--------------------------------------------------------
--  File created - Thursday-May-23-2019   
--------------------------------------------------------
REM INSERTING into OAUTH_CLIENT_DETAILS
SET DEFINE OFF;
Insert into OAUTH_CLIENT_DETAILS (CLIENT_ID,RESOURCE_IDS,CLIENT_SECRET,SCOPE,AUTHORIZED_GRANT_TYPES,WEB_SERVER_REDIRECT_URI,AUTHORITIES,ACCESS_TOKEN_VALIDITY,REFRESH_TOKEN_VALIDITY,ADDITIONAL_INFORMATION,AUTOAPPROVE) values ('etime-client-1','dg-etime-rest-api','$2a$04$Cgp51tZyVUqge81twiuD6uNjplmjAQcXDZX5Pza8Bfu4r4L6BefSi','read,write','password,authorization_code,refresh_token,implicit',null,'USER',86400,2592000,null,null);
commit;
