

-- All open LVPI cases on Cath Brown's taskpad where LVPI = yes and no medical instruction present

Select dt.EntityRef ,dt.MatterNoRef ,* from diary_tasks dt
inner join Usr_Key_Data_srs kd on kd.EntityRef = dt.EntityRef and kd.MatterNo = dt.MatterNoRef 
left outer join Usr_Medical_Agency_srs ma on ma.EntityRef = dt.EntityRef and ma.MatterNo = dt.MatterNoRef  
where dt.Username = 'CIB' and dt.description = 'Case Step - Medical review (LVPI)' and ma.Creation_Date is null
and kd.LVPI_Case = 'Y' and kd.Case_Status not in(17,15)


-- All open non-LVPI cases on Cath Brown's taskpad where no medical instruction present

Select dt.EntityRef ,dt.MatterNoRef ,* from diary_tasks dt
inner join Usr_Key_Data_srs kd on kd.EntityRef = dt.EntityRef and kd.MatterNo = dt.MatterNoRef 
left outer join Usr_Medical_Agency_srs ma on ma.EntityRef = dt.EntityRef and ma.MatterNo = dt.MatterNoRef  
where dt.Username = 'CIB' and dt.description = 'Case Step - Medical review (LVPI)' and ma.Creation_Date is null
and kd.LVPI_Case = 'N' and kd.Case_Status not in(17,15)



