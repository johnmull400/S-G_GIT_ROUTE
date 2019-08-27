

Select * from matters where entityref = 'TES000000001253' and number = 1006

/*
begin tran
update matters set CaseTypeRef = 602 where entityref = 'TES000000001253' and number = 1006
commit
*/

select * from casetypes


select * from usr_court_hearings_srs where entityref = 'TES000000001253' and matterno = 1006

delete from usr_court_hearings_srs where id in(117062, 117060)
--



-- For querying case agenda ************************************************************************
select m.feeearnerref,m.entityref,matterno,ci.itemid,ci.description,ci.creationdate FROM Cm_Agendas  
INNER JOIN    Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join Matters m on m.EntityRef = cm_agendas.EntityRef and m.Number = cm_agendas.MatterNo 
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
inner join cm_steps cs on cs.itemid=ci.itemid
/*inner join Cm_Steps_ActionHistory ah on ah.ItemID = cs.ItemID*/
where (Cm_Agendas.entityref = 'TES000000001253') and (matterno = 1006) 
and (ci.description like '%Case Step - Hearing Dates%')


select * from cm_steps where ItemID = 178587630

delete from cm_steps where itemid = 178587630
delete from cm_caseitems where itemid = 178587630