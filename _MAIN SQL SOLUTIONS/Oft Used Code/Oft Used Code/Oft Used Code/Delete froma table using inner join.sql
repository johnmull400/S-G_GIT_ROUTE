


begin tran
delete from d 
from diary_tasks d
inner join matters m on m.entityref=d.entityref and m.Number = d.MatterNoRef  
where  d.Description like 'Case Step - 3  month supervisor%' and deletethis = 0 and m.CaseTypeRef = 612
rollback
commit