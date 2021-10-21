CREATE OR REPLACE VIEW patient_demo
AS
   SELECT patient_id, max(id) AS most_recent_id
   FROM visit_info	
   WHERE provider_id=1
   GROUP BY most_recent_id;