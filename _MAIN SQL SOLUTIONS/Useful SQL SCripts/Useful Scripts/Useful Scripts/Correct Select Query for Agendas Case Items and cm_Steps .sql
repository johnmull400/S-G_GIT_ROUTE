-- Without join to matters
select entityref,matterno,ci.itemid,ci.description,ci.creationdate FROM Cm_Agendas  
INNER JOIN    Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
inner join cm_steps cs on cs.itemid=ci.itemid
/*inner join Cm_Steps_ActionHistory ah on ah.ItemID = cs.ItemID*/
where /*(Cm_Agendas.entityref = 'BRA000000000533') and (matterno = 1) 
and*/ (ci.description like 'Client - Enc Med Report -%' and ci.Description not like '%(ES)%') and ci.CreationDate > '2015-10-01 11:00:54.450' and ci.CreationDate <= '2015-10-01 15:49:54.450'
order by creationdate desc

-- With join to matters
select m.feeearnerref,m.entityref,matterno,ci.itemid,ci.description,ci.creationdate FROM Cm_Agendas  
INNER JOIN    Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join Matters m on m.EntityRef = cm_agendas.EntityRef and m.Number = cm_agendas.MatterNo 
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
inner join cm_steps cs on cs.itemid=ci.itemid
/*inner join Cm_Steps_ActionHistory ah on ah.ItemID = cs.ItemID*/
where /*(Cm_Agendas.entityref = 'BRA000000000533') and (matterno = 1) 
and*/ (ci.description like 'Client - Enc Med Report -%' and ci.Description not like '%(ES)%') and ci.CreationDate > '2015-10-01 11:00:54.450' and ci.CreationDate <= '2015-10-01 15:49:54.450'
order by creationdate desc


< '2010-10-01'



select *  from Cm_steps ci
where /*CreationDate > '2011-05-05' and */ Description = 'Mailshot - Important Information about Complaints'

select *  from Cm_steps where ItemID = 26632644



begin transaction
delete from Cm_CaseItems 
where CreationDate > '2011-05-05' and Description = 'Mailshot - Important Information about Complaints'
rollback
commit

select MAX(SentDate ) FROM Cm_Agendas  
INNER JOIN    Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
inner join cm_steps cs on cs.itemid=ci.itemid
where(Cm_Agendas.entityref = 'TEST00000000000') and (matterno = 8) 
and (ci.description like 'Counsel%') and SentDate is null



select cm_agendas.entityref, ci.Description,cs.AssignedUser,dt.Username FROM Cm_Agendas 
inner JOIN matters mat on mat.entityref = Cm_Agendas.entityref and mat.number = cm_agendas.matterno
INNER JOIN Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
inner join cm_steps cs on cs.itemid=ci.itemid
inner join Diary_Tasks dt on dt.CaseItemRef = ci.ItemID 
where (ci.description = 'Case Step - Supervisor Review File Reallocated') and mat.SupervisorRef = 'ASM' and cs.DiaryDate  is not null and assigneduser is NULL and cm_agendas.entityref = 'PIN000000000407'


select * from matters where supervisorref = 'ASM'