use partner

select top 2 * from Cm_Agendas where ItemID = 31880084


select * from diary_tasks where /*Description like '%25 day issues%' and  */ EntityRef like 'chi000000000611%' and MatterNoRef = 1


Select * from diary_tasks where /*Username = 'PHP' and*/ EntityRef = 'wes000000002076' and MatterNoRef = 1 and DeleteThis = 0 and Description in ('Case Step - Supervisor Limitation Review','Case Step - Compliance Limitation Review')
Select * from diary_tasks where Username = 'AAA' /*and EntityRef = 'PHI000000000968' and MatterNoRef = 1*/ and Description in ('Case Step - Supervisor Review File Reallocated')
Select * from diary_tasks where /*Username = 'PHP' and*/ EntityRef = 'EDW000000001567' and MatterNoRef = 1
Select * from diary_tasks where Username = 'STW' and EntityRef = 'har000000004064' and MatterNoRef = 1 
delete from Diary_Tasks where Code in(93636075)
select * from Diary_Tasks where Code in(22566994)

update Diary_Tasks set Username = 'KAP' where  Description like '%Months until Limitation' and  EntityRef = 'CNN000000000075' and MatterNoRef = 1

update Diary_Tasks set DeleteThis = 1 where Code in(25387478)

update Diary_Tasks set username = 'JNB' where Code in(13308844)


select * from users where fullname = 'Nicola Warburton'


update Usr_Key_Data_srs set LVPI_Case  = 'Y' where   EntityRef = 'TEST00000000001' and MatterNo = 4


select prearchive_status from Usr_Key_Data_srs where   EntityRef = 'TEST00000000001' and MatterNo = 4


select * from Usr_Status_Lookup_srs 





update Diary_Tasks set Username = 'JFB' where Code in(13308844)

select * from cm_steps where ItemID = 31461557

update Cm_Steps set startdate = NULL,Duration = 0 where ItemID = 31823656

update Cm_Steps set AssignedUser = 'JFB' where ItemID in(39207864)



Select * from diary_tasks 
where EntityRef in
('LEW000000000785', 
'MCG000000000710' ,
'REG000000000199' ,
'ALI000000001384' ,
'HAM000000001058' ,
'HAR000000004220' ,
'PAR000000002528' ) and MatterNoRef = 1 /*and Username = '233'*/ and Description = 'Call media task - Client'



select *
from sr_write_offs wo with (nolock)
where entityref like 'ACHEL%' and matterno = 462
order by entityref,matterno,created


update Diary_Tasks set ThirdPartyRef = newid() where Code = 11408069