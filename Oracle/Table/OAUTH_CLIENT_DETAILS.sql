CREATE TABLE OAUTH_CLIENT_DETAILS  
(	
	 CLIENT_ID 								VARCHAR2(255)			PRIMARY KEY,
	 RESOURCE_IDS 							VARCHAR2(255), 
	 CLIENT_SECRET 							VARCHAR2(255), 
	 SCOPE 									VARCHAR2(255), 
	 AUTHORIZED_GRANT_TYPES 				VARCHAR2(255), 
	 WEB_SERVER_REDIRECT_URI 				VARCHAR2(255), 
	 AUTHORITIES 							VARCHAR2(255), 
	 ACCESS_TOKEN_VALIDITY 					INTEGER, 
	 REFRESH_TOKEN_VALIDITY 				INTEGER, 
	 ADDITIONAL_INFORMATION 				VARCHAR2(255), 
	 AUTOAPPROVE 							VARCHAR2(255)
);
