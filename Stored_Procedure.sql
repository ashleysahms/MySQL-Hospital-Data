DELIMITER //

CREATE PROCEDURE invoice_update
(
invoice_date_param  DATE,
invoice_total_param DECIMAL(9,2)
)



BEGIN

select invoice_total, invoice_date,invoice_number

from Invoices

left outer join patient_contacts on patient_id = invoice_number

left outer join Invoices  on invoices= patient_demographics

where patient_id = invoice_id

END;
DELIMITER //