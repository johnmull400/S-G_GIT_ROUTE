





-- This is a standard instruction pair for updating a single record using the unique
-- id. Just change the details to use

select * from usr_medical_agency_srs  where entityref = 'KEA000000000222' and matterno = 1

update usr_medical_agency_srs set Instruction_Status = 'Invoiced' where ID = 103221