CREATE TRIGGER patient_contact
AFTER UPDATE
   ON patient_demographics
   FOR EACH ROW


 INSERT INTO patient_contact_log
 SET action = 'update',
     patient_id = OLD.patient_id,
     patient_ohone_number = OLD.patient_phone_number,
     changedat = NOW();
     