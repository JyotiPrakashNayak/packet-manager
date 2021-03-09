-- ---------------------------------------------------------------------------------------------------------
-- Database Name: mosip_master
-- Release Version 	: 1.1.5-SNAPSHOT
-- Purpose    		: Database Alter scripts for the release for Master DB.       
-- Create By   		: Ram Bhatt
-- Created Date		: Jan-2021
-- 
-- Modified Date        Modified By         Comments / Remarks
-- -----------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------------------------------------------------------
\c mosip_master sysadmin

ALTER TABLE master.authentication_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.global_param ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.language ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.gender ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.user_detail_h ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.id_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.blacklisted_words ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.registration_center_h ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.appl_form_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.status_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.screen_authorization ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.role_list ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.introducer_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.template_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.screen_detail ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.app_role_priority ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.admin_param ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.machine_master_h ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.biometric_attribute ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.biometric_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.app_detail ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.daysofweek_list ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.reg_working_nonworking ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.machine_master ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.reg_exceptional_holiday ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.reason_category ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.reason_list ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.machine_spec ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.device_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.device_spec ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.device_master ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.identity_schema ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.dynamic_field ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.schema_definition ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.bulkupload_transaction ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.sync_job_def ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.zone ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.loc_hierarchy_list ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.loc_holiday ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.doc_format ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.zone_user ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.location ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.individual_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.zone_user_h ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.title ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.device_master_h ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.message_list ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.status_list ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.template ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.module_detail ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.process_list ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.doc_category ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.template_file_format ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.applicant_valid_document ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.machine_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.valid_document ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.app_authentication_method ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.registration_center ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.authentication_method ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.reg_center_type ALTER COLUMN is_deleted SET NOT NULL;
ALTER TABLE master.user_detail ALTER COLUMN is_deleted SET NOT NULL;


ALTER TABLE master.authentication_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.global_param ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.language ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.gender ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.user_detail_h ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.id_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.blacklisted_words ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.registration_center_h ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.appl_form_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.status_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.screen_authorization ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.role_list ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.introducer_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.template_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.screen_detail ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.app_role_priority ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.admin_param ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.machine_master_h ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.biometric_attribute ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.biometric_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.app_detail ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.daysofweek_list ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.reg_working_nonworking ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.machine_master ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.reg_exceptional_holiday ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.reason_category ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.reason_list ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.machine_spec ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.device_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.device_spec ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.device_master ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.identity_schema ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.dynamic_field ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.schema_definition ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.bulkupload_transaction ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.sync_job_def ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.zone ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.loc_hierarchy_list ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.loc_holiday ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.doc_format ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.zone_user ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.location ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.individual_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.zone_user_h ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.title ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.device_master_h ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.message_list ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.status_list ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.template ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.module_detail ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.process_list ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.doc_category ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.template_file_format ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.applicant_valid_document ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.machine_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.valid_document ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.app_authentication_method ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.registration_center ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.authentication_method ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.reg_center_type ALTER COLUMN is_deleted SET DEFAULT FALSE;
ALTER TABLE master.user_detail ALTER COLUMN is_deleted SET DEFAULT FALSE;


