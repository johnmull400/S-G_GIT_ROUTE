

select cm_agendas.entityref,cs.ItemID, ci.Description,cs.AssignedUser,dt.Username FROM Cm_Agendas 
inner JOIN matters mat on mat.entityref = Cm_Agendas.entityref and mat.number = cm_agendas.matterno
INNER JOIN Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
inner join cm_steps cs on cs.itemid=ci.itemid
inner join Diary_Tasks dt on dt.CaseItemRef = ci.ItemID 
where (ci.description = 'Case Step - Supervisor Review File Reallocated') 
and mat.SupervisorRef = 'ASM' and cs.DiaryDate  is not null and cs.AssignedUser in('AAA','MAN',NULL,'NBE','EGK') order by cm_agendas.EntityRef




update diary_tasks set username = 'ASM' where caseitemref 
in(41668071)

Select * from diary_tasks where caseitemref = 42372192

update cm_steps set AssignedUser = 'ASM' where ItemID 
in(41668071)
select * from cm_steps where ItemID =42372192


Select * from diary_tasks where username = 'ASM' and description like 'Case Step - Supervisor Review%'