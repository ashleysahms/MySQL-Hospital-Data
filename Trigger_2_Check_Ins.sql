CREATE TRIGGER check_ins
AFTER UPDATE
   ON visit_info
   FOR EACH ROW


 INSERT INTO check_in_update
 SET action = 'update',
     patient_id = OLD.patient_id,
     room_number=OLD.room_number,
     changedat = NOW();
     