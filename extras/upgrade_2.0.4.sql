THESE CHANGES ARE NOT FOR PRODUCTION USE YET, DO NOT APPLY THEM!!!!!!!!!!!!!!!!!!!!!







ALTER TABLE vicidial_inbound_groups ADD moh_extension VARCHAR(20);
ALTER TABLE vicidial_inbound_groups ADD prompt_interval SMALLINT(5) UNSIGNED default '60';
ALTER TABLE vicidial_inbound_groups ADD announce_place_in_line ENUM('Y','N') default 'N';
ALTER TABLE vicidial_inbound_groups ADD announce_estimate_hold_time ENUM('Y','N') default 'N';
ALTER TABLE vicidial_inbound_groups ADD allow_leave_queue_place ENUM('Y','N') default 'N';
ALTER TABLE vicidial_inbound_groups ADD allow_leave_queue_message ENUM('Y','N') default 'N';
ALTER TABLE vicidial_inbound_groups ADD callback_number_validation ENUM('6','7','8','9','10','11','12','13','14','NORTH_AMERICA','UK');
ALTER TABLE vicidial_inbound_groups ADD call_time VARCHAR(20);
ALTER TABLE vicidial_inbound_groups ADD after_hours ENUM('HANGUP','VOICEMAIL','EXTENSION') default 'EXTENSION';
ALTER TABLE vicidial_inbound_groups ADD after_hours_exten VARCHAR(20);

ALTER TABLE servers ADD hold_queue_prompt_exten VARCHAR(20) default '8359';

ALTER TABLE vicidial_auto_calls ADD last_prompt_time DATETIME;
ALTER TABLE vicidial_auto_calls ADD random_id INT(9) UNSIGNED;
ALTER TABLE vicidial_auto_calls ADD recording_id INT(10) UNSIGNED;

ALTER TABLE vicidial_user_groups ADD allowable_xfer_inbound_groups TEXT
ALTER TABLE vicidial_user_groups ADD default_xfer_inbound_group VARCHAR(20)