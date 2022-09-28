--liquibase formatted sql
--changeset Ramya:TEST_PROC1 failOnError:true endDelimiter:/ stripcomments:false
--rollback DROP PROCEDURE PROC_DEMO_SQL3; 
--comment: Initial creation of procedure PROC_DEMO_SQL3
--validCheckSum: ANY
CREATE OR REPLACE PROCEDURE PROC_DEMO_SQL3
AS
BEGIN
  declare z int;
  declare a int;
  /*test*/
  
  select count(*) into z from EXT.EXT_CMR_CDL_LOAD;
  select count(*) into a from EXT.EXT_CMR_CDL_LOAD;
  
  COMMIT;
  
END;
/

--changeset Ramya:TEST_PROC2 failOnError:true endDelimiter:/ stripcomments:false
--rollback DROP PROCEDURE PROC_DEMO_SQL4; 
--comment: Initial creation of procedure PROC_DEMO_SQL4
--validCheckSum: ANY
CREATE OR REPLACE PROCEDURE PROC_DEMO_SQL4
AS
BEGIN
  declare z int;
  /*test*/
  select count(*) into z from EXT.EXT_CMR_CDL_LOAD;
  COMMIT;
  
END;
/