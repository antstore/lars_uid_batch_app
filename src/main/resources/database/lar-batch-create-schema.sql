
CREATE TABLE LAR_BATCH_CONFIG
  (
    ID           NUMBER NOT NULL,
    CTL_TYPE     VARCHAR2(25 CHAR) NOT NULL,
    FILE_COUNTER NUMBER,
    LAST_UPDATE_DT DATE NOT NULL,
    constraint lar_batch_config_PK PRIMARY KEY (ID) 
  );
  
CREATE TABLE LAR_BATCH_SUMMARY
  (
    ID                      NUMBER NOT NULL ,
    BATCH_TYPE              VARCHAR2(25 CHAR) NOT NULL,
    BATCH_TYPE_DESCRIPTION  VARCHAR2(255 CHAR),
    FILE_NAME               VARCHAR2(255 CHAR) NOT NULL,
    NO_OF_RECORDS_FAILED    NUMBER,
    NO_OF_RECORDS_PROCESSED NUMBER,
    PRCOESS_DT TIMESTAMP (6),
    constraint lar_batch_summary_PK PRIMARY KEY (ID)
  );
  
CREATE TABLE LAR_LIFESTYLE_REWARDS_RECORDS
  (
    SVC_IDNTY VARCHAR2(32 CHAR) NOT NULL,
    EFF_DT DATE NOT NULL,
    EXTRACT_DT DATE NOT NULL,
    NEW_SVC_IDNTY VARCHAR2(32 CHAR),
    PARTY_ID      VARCHAR2(64 CHAR),
    RECORD_TYPE   NUMBER NOT NULL,
    REJECT_REASON VARCHAR2(100 CHAR),
    RLTN_FLAG     VARCHAR2(1 CHAR) NOT NULL,
    STATUS        VARCHAR2(1 CHAR),
    UNQU_ID       VARCHAR2(12 CHAR),
    constraint lar_lrr_PK PRIMARY KEY (SVC_IDNTY) 
  );
  
CREATE SEQUENCE LAR_BATCH_SUMMARY_SEQ MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1;
