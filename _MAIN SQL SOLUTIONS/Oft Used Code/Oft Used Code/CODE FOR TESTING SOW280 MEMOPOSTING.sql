

-- Check the medical records and related tables
select ma.POID,  pin.InstructionPO, pin.MemoPostingRecordRef, mp.id,  ma.Instruction_Status, mp.Status
from usr_medical_agency_srs ma
inner join sr_proactis_instructions pin on ma.POID = pin.InstructionPO
inner join memopostings mp on pin.MemoPostingRecordRef = mp.id
where /*ma.Instruction_Status = 'Cancelled' and mp.Status = 'DUE' and*/ ma.entityref = 'Test00000000001' and ma.matterno = 13

-- Set a medical instruction to cancelled
update usr_medical_agency_srs set instruction_status = 'Cancelled' where poid = 2125664

-- Reset the memopostings records from DEL to DUE 
Update memopostings set status = 'DUE' where id 
in(661445,
661446,
661444)
